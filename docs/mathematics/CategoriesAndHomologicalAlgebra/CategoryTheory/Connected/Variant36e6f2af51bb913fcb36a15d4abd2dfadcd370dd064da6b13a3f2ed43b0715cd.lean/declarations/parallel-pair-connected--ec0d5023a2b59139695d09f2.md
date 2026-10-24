# parallel_pair_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d3a16f1b1680f0ade175c3bd679f98e18d9ce5d4f2af9b2e3a3c5178e346652",
  "kind": "instance",
  "lexical_name": "parallel_pair_connected",
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
  "slug": "parallel-pair-connected--ec0d5023a2b59139695d09f2",
  "source": {
    "blob": "9d945a8414c05111beb1c818fd2baab6f70c6ab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec0d5023a2b59139695d09f2dae03b40fe8ee57caedc008846e9319db7f6e68f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d3a16f1b1680f0ade175c3bd679f98e18d9ce5d4f2af9b2e3a3c5178e346652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance parallel_pair_connected : IsConnected WalkingParallelPair := by
  apply IsConnected.of_induct
  · introv _ t
    cases j
    · rwa [t WalkingParallelPairHom.left]
    · assumption

end Examples

variable {C : Type u₂} [Category.{v₂} C]
variable [HasBinaryProducts C]
variable {J : Type v₂} [SmallCategory J]

namespace ProdPreservesConnectedLimits

set_option backward.defeqAttrib.useBackward true in
/-- (Impl). The obvious natural transformation from (X × K -) to K. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d945a8414c05111beb1c818fd2baab6f70c6ab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
