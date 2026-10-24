# CostructuredArrow.overEquivPresheafCostructuredArrow_functor_map_toOverCompCoyoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbe835578c22a4d4df1754fedfaedf7f6615d933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 683,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c3ed4f8-fb83-48a0-1eff-6d67cd1d43cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07eec7e9-2c45-6354-9f26-5e7c6aad0bb6",
  "kind": "theorem",
  "lexical_name": "CostructuredArrow.overEquivPresheafCostructuredArrow_functor_map_toOverCompCoyoneda",
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
  "slug": "costructuredarrow-overequivpresheafcostructuredarrow-functor-map-tooverc--aa89194209e8a21fd5da171d",
  "source": {
    "blob": "cbe835578c22a4d4df1754fedfaedf7f6615d933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 683,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa89194209e8a21fd5da171d11c357d39d0f0ca607b6426c7a0aa7517046550a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07eec7e9-2c45-6354-9f26-5e7c6aad0bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CostructuredArrow.overEquivPresheafCostructuredArrow_functor_map_toOverCompCoyoneda
    {A : Cᵒᵖ ⥤ Type v} {T : Over A} {X : CostructuredArrow yoneda A}
    (f : yoneda.obj X ⟶ (overEquivPresheafCostructuredArrow A).functor.obj T) :
    dsimp% (overEquivPresheafCostructuredArrow A).functor.map
      (((CostructuredArrow.toOverCompCoyoneda A).inv.app (op X)).app T f) =
      (CostructuredArrow.toOverCompOverEquivPresheafCostructuredArrow A).hom.app X ≫ f := by
  simp [CostructuredArrow.toOverCompCoyoneda]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7d42fe729ebec1ae9d9390c2117309b7bd4e41edafea266dfe162a017979c015.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbe835578c22a4d4df1754fedfaedf7f6615d933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
