# Cal.instDecidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac7b2ed6ac82b8179dfa6cf3ef1a3345cf68d11c542a8e60149c92c07a92a5dc",
  "kind": "def",
  "lexical_name": "Cal.instDecidable",
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
  "slug": "cal-instdecidable--fa0503e7f05f493536e228f7",
  "source": {
    "blob": "d446ded530bb6a45e5e5701126964bdf58ef510f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa0503e7f05f493536e228f75330cb6446b2e8f7d20f17c1f0edd79df2709129",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac7b2ed6ac82b8179dfa6cf3ef1a3345cf68d11c542a8e60149c92c07a92a5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cal.instDecidable [DecidableEq Φ] (l r : List Φ) (Γ Δ : List (Form Φ))
  : Decidable (Cal l r Γ Δ) := by
  match Γ, Δ with
  | [], [] => unfold Cal; apply Common.instDecidable l r
  | ⊥ :: Γ, [] => aesop
  | Γ, ⊥ :: Δ =>
    have ih : Decidable (Cal l r Γ Δ) := instDecidable l r Γ Δ
    aesop
  | ♩n :: Γ, [] =>
    have ih : Decidable (Cal (n :: l) r Γ []) := instDecidable (n :: l) r Γ []
    aesop
  | Γ, ♩n :: Δ =>
    have ih : Decidable (Cal l (n :: r) Γ Δ) := instDecidable l (n :: r) Γ Δ
    aesop
  | φ ⇒ ψ :: Γ, [] =>
    have ih₁ : Decidable (Cal l r Γ [φ]) := instDecidable l r Γ [φ]
    have ih₂ : Decidable (Cal l r (ψ :: Γ) []) := instDecidable l r (ψ :: Γ) []
    aesop
  | Γ, φ ⇒ ψ :: Δ =>
    have ih : Decidable (Cal l r (φ :: Γ) (ψ :: Δ)) := instDecidable l r (φ :: Γ) (ψ :: Δ)
    aesop
termination_by sum (Γ.map sizeOf) + sum (Δ.map sizeOf)
decreasing_by all_goals simp_wf <;> simp +arith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d446ded530bb6a45e5e5701126964bdf58ef510f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
