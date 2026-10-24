# IsColimit.pullback_zero_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "135a2773a46f3f22e08d5ab61a046175bea8298a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:069eec5a-4301-0480-f905-7a0746ac7644",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ca260ad-ae8c-7859-e623-96c0027f79c0",
  "kind": "theorem",
  "lexical_name": "IsColimit.pullback_zero_ext",
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
  "slug": "iscolimit-pullback-zero-ext--6f9b6222084903455aa8e542",
  "source": {
    "blob": "135a2773a46f3f22e08d5ab61a046175bea8298a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f9b6222084903455aa8e54252b257ad44a7b992a69221648082035cbf38060c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ca260ad-ae8c-7859-e623-96c0027f79c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsColimit.pullback_zero_ext [HasZeroMorphisms C] [HasPullbacks C] [HasColimitsOfShape J C]
    [HasExactColimitsOfShape J C] {F : J ⥤ C} {c : Cocone F} (hc : IsColimit c) {X Y : C}
    {f : X ⟶ c.pt} {g : c.pt ⟶ Y} (hf : ∀ j, pullback.snd (c.ι.app j) f ≫ f ≫ g = 0) :
    f ≫ g = 0 := by
  suffices f ≫ g = f ≫ 0 by simpa
  exact hc.pullback_hom_ext (by simpa using hf)

/--
If `c` is a cone over a functor `J ⥤ C` and `f : c.pt ⟶ X`, then for every `j : J` we can take
the pushout of `c.π.app j` and `f`. This gives a new cone with cone point `X`, and this cone is
again a limit cone as long as `J` is connected and `C` has exact limits of shape `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135a2773a46f3f22e08d5ab61a046175bea8298a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
