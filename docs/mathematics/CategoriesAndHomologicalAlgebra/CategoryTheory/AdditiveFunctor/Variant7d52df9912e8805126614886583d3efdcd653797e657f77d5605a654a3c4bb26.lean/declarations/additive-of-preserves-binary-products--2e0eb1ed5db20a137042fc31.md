# additive_of_preserves_binary_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9a2719f-0271-4d2a-b283-a3f4fb89c826",
  "kind": "lemma",
  "lexical_name": "additive_of_preserves_binary_products",
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
  "slug": "additive-of-preserves-binary-products--2e0eb1ed5db20a137042fc31",
  "source": {
    "blob": "1c3cf5f286b06a20a3a633f5e20eff8b8406936c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 240,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7d52df9912e8805126614886583d3efdcd653797e657f77d5605a654a3c4bb26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0eb1ed5db20a137042fc31b26c76f570a0c4b0fd17b573921a5a7b3f026b7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7d52df9912e8805126614886583d3efdcd653797e657f77d5605a654a3c4bb26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9a2719f-0271-4d2a-b283-a3f4fb89c826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma additive_of_preserves_binary_products
    [HasBinaryProducts C] [PreservesLimitsOfShape (Discrete WalkingPair) F]
    [F.PreservesZeroMorphisms] : F.Additive := by
  have : HasBinaryBiproducts C := HasBinaryBiproducts.of_hasBinaryProducts
  have := preservesBinaryBiproducts_of_preservesBinaryProducts F
  exact Functor.additive_of_preservesBinaryBiproducts F

end

end

end Functor

namespace Equivalence

variable {C D : Type*} [Category* C] [Category* D] [Preadditive C] [Preadditive D]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7d52df9912e8805126614886583d3efdcd653797e657f77d5605a654a3c4bb26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant7d52df9912e8805126614886583d3efdcd653797e657f77d5605a654a3c4bb26.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3cf5f286b06a20a3a633f5e20eff8b8406936c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
