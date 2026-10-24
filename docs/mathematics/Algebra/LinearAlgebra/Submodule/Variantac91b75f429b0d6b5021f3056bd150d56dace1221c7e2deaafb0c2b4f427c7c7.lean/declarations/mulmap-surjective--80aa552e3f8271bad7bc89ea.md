# mulMap'_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a28c54a-92ed-c425-5984-759d953f5d10",
  "kind": "theorem",
  "lexical_name": "mulMap'_surjective",
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
  "slug": "mulmap-surjective--80aa552e3f8271bad7bc89ea",
  "source": {
    "blob": "543307cb87d8957cdcf9cc4385ce81a62a6ecb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80aa552e3f8271bad7bc89ea7cccc6067c23bd510821d5e56a716c7c0b840131",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a28c54a-92ed-c425-5984-759d953f5d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulMap'_surjective : Function.Surjective (mulMap' M N) := by
  simp_rw [mulMap', LinearMap.coe_comp, LinearEquiv.coe_coe, EquivLike.comp_surjective,
    LinearMap.surjective_rangeRestrict]

/-- If `N` is a submodule in an algebra `S` over `R`, there is the natural `R`-linear map
`i(R) ⊗[R] N →ₗ[R] N` induced by multiplication in `S`, here `i : R → S` is the structure map.
This is promoted to an isomorphism of `R`-modules as `Submodule.lTensorOne`. Use that instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543307cb87d8957cdcf9cc4385ce81a62a6ecb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
