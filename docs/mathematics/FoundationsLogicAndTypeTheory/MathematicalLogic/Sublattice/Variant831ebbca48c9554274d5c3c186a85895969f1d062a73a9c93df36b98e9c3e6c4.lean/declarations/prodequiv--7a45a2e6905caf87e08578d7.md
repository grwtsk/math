# prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7c9e5e824bc2a42b0abd2ed4045b87f043b925c6625270156e06d4f3288e697",
  "kind": "def",
  "lexical_name": "prodEquiv",
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
  "slug": "prodequiv--7a45a2e6905caf87e08578d7",
  "source": {
    "blob": "d690e80db699b56e89cc7b8982167445e4955c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant831ebbca48c9554274d5c3c186a85895969f1d062a73a9c93df36b98e9c3e6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a45a2e6905caf87e08578d7cee4b7fd662452bc7af11facb5398333773cc98f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant831ebbca48c9554274d5c3c186a85895969f1d062a73a9c93df36b98e9c3e6c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7c9e5e824bc2a42b0abd2ed4045b87f043b925c6625270156e06d4f3288e697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquiv (L : Sublattice α) (M : Sublattice β) : L.prod M ≃o L × M where
  toEquiv := Equiv.Set.prod _ _
  map_rel_iff' := Iff.rfl

section Pi
variable {κ : Type*} {π : κ → Type*} [∀ i, Lattice (π i)]

/-- Arbitrary product of sublattices. Given an index set `s` and a family of sublattices
`L : Π i, Sublattice (α i)`, `pi s L` is the sublattice of dependent functions `f : Π i, α i` such
that `f i` belongs to `L i` whenever `i ∈ s`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant831ebbca48c9554274d5c3c186a85895969f1d062a73a9c93df36b98e9c3e6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sublattice/Variant831ebbca48c9554274d5c3c186a85895969f1d062a73a9c93df36b98e9c3e6c4.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d690e80db699b56e89cc7b8982167445e4955c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
