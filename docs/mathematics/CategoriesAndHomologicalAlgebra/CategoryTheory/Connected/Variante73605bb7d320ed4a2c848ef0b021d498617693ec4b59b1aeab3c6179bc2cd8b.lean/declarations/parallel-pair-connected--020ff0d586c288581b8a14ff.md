# parallel_pair_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e14dcad79f697ef13e650834378ab331451fb638342b5517835b29e7077fc016",
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
  "slug": "parallel-pair-connected--020ff0d586c288581b8a14ff",
  "source": {
    "blob": "29d88f3e587bbbe9a625b733d56bd259b4e36718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:020ff0d586c288581b8a14ff9264147fcfd2ad44fa75b6eafdc04c85765e3ebf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e14dcad79f697ef13e650834378ab331451fb638342b5517835b29e7077fc016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–199.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variante73605bb7d320ed4a2c848ef0b021d498617693ec4b59b1aeab3c6179bc2cd8b.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d88f3e587bbbe9a625b733d56bd259b4e36718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
