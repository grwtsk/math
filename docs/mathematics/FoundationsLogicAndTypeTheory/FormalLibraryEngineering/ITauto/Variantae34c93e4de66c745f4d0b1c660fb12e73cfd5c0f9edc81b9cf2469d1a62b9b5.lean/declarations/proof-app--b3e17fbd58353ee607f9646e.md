# Proof.app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d21395b9347c10155e5bb3723d6d8246d96a14fdf21547e64f8cc7b061234c21",
  "kind": "def",
  "lexical_name": "Proof.app",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "proof-app--b3e17fbd58353ee607f9646e",
  "source": {
    "blob": "042badf4019c528ad72566c87f4f9abf15b3fbf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3e17fbd58353ee607f9646e465f7fdc2118e83f29a36e4703d47c99d617331f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d21395b9347c10155e5bb3723d6d8246d96a14fdf21547e64f8cc7b061234c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Proof.app : Proof → Proof → Proof
  | .curry ak p, q => .curry₂ ak p q
  | .curry₂ ak p q, r => p.app (q.andIntro ak r)
  | .orImpL p, q => p.app q.orInL
  | .orImpR p, q => p.app q.orInR
  | .impImpSimp x p, q => p.app (.intro x q)
  | p, q => p.app' q

-- Note(Mario): the typechecker is disabled because it requires proofs to carry around additional
-- props. These can be retrieved from the git history (rev 6c96d2ff7) if you want to re-enable this.
/-
/-- A typechecker for the `Proof` type. This is not used by the tactic but can be used for
debugging. -/
def Proof.check : Lean.NameMap IProp → Proof → Option IProp
  | _, .sorry A => some A
  | Γ, .hyp i => Γ.find? i
  | _, triv => some .true
  | Γ, .exfalso' A p => guard (p.check Γ = some .false) *> pure A
  | Γ, .intro x A p => do let B ← p.check (Γ.insert x A); pure (.imp A B)
  | Γ, .andLeft ak p => do
    let .and' ak' A B ← p.check Γ | none
    guard (ak = ak') *> pure (ak.sides A B).1
  | Γ, .andRight ak p => do
    let .and' ak' A B ← p.check Γ | none
    guard (ak = ak') *> pure (ak.sides A B).2
  | Γ, .andIntro .and p q => do
    let A ← p.check Γ; let B ← q.check Γ
    pure (A.and B)
  | Γ, .andIntro ak p q => do
    let .imp A B ← p.check Γ | none
    let C ← q.check Γ; guard (C = .imp B A) *> pure (A.and' ak B)
  | Γ, .curry ak p => do
    let .imp (.and' ak' A B) C ← p.check Γ | none
    let (A', B') := ak.sides A B
    guard (ak = ak') *> pure (A'.imp $ B'.imp C)
  | Γ, .curry₂ ak p q => do
    let .imp (.and' ak' A B) C ← p.check Γ | none
    let A₂ ← q.check Γ
    let (A', B') := ak.sides A B
    guard (ak = ak' ∧ A₂ = A') *> pure (B'.imp C)
  | Γ, .app' p q => do
    let .imp A B ← p.check Γ | none
    let A' ← q.check Γ
    guard (A = A') *> pure B
  | Γ, .orImpL B p => do
    let .imp (.or A B') C ← p.check Γ | none
    guard (B = B') *> pure (A.imp C)
  | Γ, .orImpR A p => do
    let .imp (.or A' B) C ← p.check Γ | none
    guard (A = A') *> pure (B.imp C)
  | Γ, .orInL B p => do let A ← p.check Γ; pure (A.or B)
  | Γ, .orInR A p => do let B ← p.check Γ; pure (A.or B)
  | Γ, .orElim' p x q r => do
    let .or A B ← p.check Γ | none
    let C ← q.check (Γ.insert x A)
    let C' ← r.check (Γ.insert x B)
    guard (C = C') *> pure C
  | _, .em _ _ A => pure (A.or A.not)
  | Γ, .decidableElim _ A _ x p₂ p₃ => do
    let C ← p₂.check (Γ.insert x A)
    let C' ← p₃.check (Γ.insert x A.not)
    guard (C = C') *> pure C
  | Γ, .impImpSimp _ A p => do
    let .imp (.imp A' B) C ← p.check Γ | none
    guard (A = A') *> pure (B.imp C)
-/

/-- Get a new name in the pattern `h0, h1, h2, ...` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ITauto/Variantae34c93e4de66c745f4d0b1c660fb12e73cfd5c0f9edc81b9cf2469d1a62b9b5.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042badf4019c528ad72566c87f4f9abf15b3fbf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
