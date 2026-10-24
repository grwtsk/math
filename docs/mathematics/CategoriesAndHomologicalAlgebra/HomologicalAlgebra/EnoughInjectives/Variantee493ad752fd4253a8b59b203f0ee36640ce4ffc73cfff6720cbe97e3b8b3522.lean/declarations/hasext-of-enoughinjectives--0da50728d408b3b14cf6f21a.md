# hasExt_of_enoughInjectives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f17f516054a3c3e9d98e67c52d4a41cc5aba1a87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee493ad752fd4253a8b59b203f0ee36640ce4ffc73cfff6720cbe97e3b8b3522.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73b4982f-7690-fe62-55b5-90eb63f0ac6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebd6ce97-0ba6-8111-bc61-6538b1d6452f",
  "kind": "lemma",
  "lexical_name": "hasExt_of_enoughInjectives",
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
  "slug": "hasext-of-enoughinjectives--0da50728d408b3b14cf6f21a",
  "source": {
    "blob": "f17f516054a3c3e9d98e67c52d4a41cc5aba1a87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantee493ad752fd4253a8b59b203f0ee36640ce4ffc73cfff6720cbe97e3b8b3522.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da50728d408b3b14cf6f21a080133dd968de6151ee2e27fdddca0e70fc70dea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantee493ad752fd4253a8b59b203f0ee36640ce4ffc73cfff6720cbe97e3b8b3522.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd6ce97-0ba6-8111-bc61-6538b1d6452f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasExt_of_enoughInjectives [LocallySmall.{w} C] [EnoughInjectives C] :
  HasExt.{w} C := by
    letI := HasDerivedCategory.standard C
    have := hasExt_of_hasDerivedCategory C
    rw [hasExt_iff_small_ext.{w}]
    intro X Y n
    induction n generalizing X Y with
    | zero =>
      rw [small_congr Ext.homEquiv₀]
      infer_instance
    | succ n hn =>
      let S := ShortComplex.mk _ _ (cokernel.condition (Injective.ι Y))
      have hS : S.ShortExact :=
        { exact := ShortComplex.exact_of_g_is_cokernel _ (cokernelIsCokernel S.f) }
      have : Function.Surjective (Ext.postcomp hS.extClass X (rfl : n + 1 = _)) :=
        fun y₁ ↦ Ext.covariant_sequence_exact₁ X hS y₁ (Ext.eq_zero_of_injective _) rfl
      exact small_of_surjective.{w} this

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantee493ad752fd4253a8b59b203f0ee36640ce4ffc73cfff6720cbe97e3b8b3522.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variantee493ad752fd4253a8b59b203f0ee36640ce4ffc73cfff6720cbe97e3b8b3522.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17f516054a3c3e9d98e67c52d4a41cc5aba1a87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
