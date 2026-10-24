# mapOrderEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:824b18ba220d97c2eb345a30af940084b99746413c1898e65804acb8941566e5",
  "kind": "def",
  "lexical_name": "mapOrderEmbedding",
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
  "slug": "maporderembedding--27d829a39f2fa8ad0c71aace",
  "source": {
    "blob": "852f1fc1f99068120c2dae1fa22c0a9b547d20d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 844,
    "line": 837,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant0bad99b38482e369b9a6dcdb8150df864bb729d5c0e7e7719c908c2c3c9f84c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27d829a39f2fa8ad0c71aace54f5f820d89d7f8ba8e0d503daa65050771d83d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant0bad99b38482e369b9a6dcdb8150df864bb729d5c0e7e7719c908c2c3c9f84c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:824b18ba220d97c2eb345a30af940084b99746413c1898e65804acb8941566e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–844.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def mapOrderEmbedding {f : M →ₗ⁅R,L⁆ M'} (hf : Function.Injective f) :
    LieSubmodule R L M ↪o LieSubmodule R L M' where
  toFun := LieSubmodule.map f
  inj' := map_injective_of_injective hf
  map_rel_iff' := Set.image_subset_image_iff hf

variable (N) in
/-- For an injective morphism of Lie modules, any Lie submodule is equivalent to its image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant0bad99b38482e369b9a6dcdb8150df864bb729d5c0e7e7719c908c2c3c9f84c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant0bad99b38482e369b9a6dcdb8150df864bb729d5c0e7e7719c908c2c3c9f84c9.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `852f1fc1f99068120c2dae1fa22c0a9b547d20d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
