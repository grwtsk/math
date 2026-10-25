# Cal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d181e72b6f9693d86e8c5200e23c93267450889654c4201cdeb51b8890e835ce",
  "kind": "def",
  "lexical_name": "Cal",
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
  "slug": "cal--7fe11e2cac0bb83bfd01bd38",
  "source": {
    "blob": "d446ded530bb6a45e5e5701126964bdf58ef510f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe11e2cac0bb83bfd01bd38aec19b7f5e782548b584ff66a7fb53f10e285e57",
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

Occurrence: `declaration:d181e72b6f9693d86e8c5200e23c93267450889654c4201cdeb51b8890e835ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cal (l r : List Φ) : (Γ Δ : List (Form Φ)) → Prop
  | [], [] => Common l r
  | ⊥ :: _, [] => true
  | Γ, ⊥ :: Δ => Cal l r Γ Δ
  | ♩n :: Γ, [] => Cal (n :: l) r Γ []
  | Γ, ♩n :: Δ => Cal l (n :: r) Γ Δ
  | φ ⇒ ψ :: Γ, [] => Cal l r Γ [φ] ∧ Cal l r (ψ :: Γ) []
  | Γ, φ ⇒ ψ :: Δ => Cal l r (φ :: Γ) (ψ :: Δ)
termination_by Γ Δ => sum (Γ.map sizeOf) + sum (Δ.map sizeOf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqCalcProver/Variant45abbecda7c4918954cd9acb3506647a1061f48081f73f86de1507ac1f86236c.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d446ded530bb6a45e5e5701126964bdf58ef510f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
