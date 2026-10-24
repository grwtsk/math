# isCoseparating_iff_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d78ee21bc97f38c22d46856930a153ee651f443",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 435,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f5a911f-677a-0499-bb79-8be4e317c5bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d002c7c-1ab7-bf01-9619-04c901a221de",
  "kind": "theorem",
  "lexical_name": "isCoseparating_iff_mono",
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
  "slug": "iscoseparating-iff-mono--e9fd8cb4f11b66570a95cd94",
  "source": {
    "blob": "9d78ee21bc97f38c22d46856930a153ee651f443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 435,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9fd8cb4f11b66570a95cd9409ab3844f7d9d88a645cb7e1b0f0719c974a3de5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d002c7c-1ab7-bf01-9619-04c901a221de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoseparating_iff_mono
    [∀ (X : C), HasProduct (P.productToFamily X)] :
    IsCoseparating P ↔ ∀ X : C, Mono (P.productTo X) :=
  ⟨fun hP X ↦ hP.mono_productTo X,
    fun hP ↦ IsCoseparating.mk_of_exists_mono (fun X ↦ ⟨_, P.productToFamily X,
      fun i ↦ i.right.2, _, limit.isLimit _, _, hP X⟩)⟩

end ObjectProperty

/-- An ingredient of the proof of the Special Adjoint Functor Theorem: a complete well-powered
    category with a small coseparating set has an initial object.

    In fact, it follows from the Special Adjoint Functor Theorem that `C` is already cocomplete,
    see `hasColimits_of_hasLimits_of_isCoseparating`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaaa04a738f32e8b0cab633930e0dbc68a25af67eb3bce981f858674ce2efb0d.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d78ee21bc97f38c22d46856930a153ee651f443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
