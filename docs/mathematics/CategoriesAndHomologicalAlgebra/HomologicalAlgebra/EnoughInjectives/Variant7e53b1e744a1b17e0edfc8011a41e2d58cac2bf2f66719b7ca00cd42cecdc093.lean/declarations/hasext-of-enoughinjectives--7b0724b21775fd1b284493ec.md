# hasExt_of_enoughInjectives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e57ea02e-1865-9b63-f93a-adfe5d83dbdb",
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
  "slug": "hasext-of-enoughinjectives--7b0724b21775fd1b284493ec",
  "source": {
    "blob": "23bf87ca73b10a1eb9c232246513302b7494e062",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b0724b21775fd1b284493ec5b4b1673667788012f905d867b08f811ad97acfb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e57ea02e-1865-9b63-f93a-adfe5d83dbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–142.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/EnoughInjectives/Variant7e53b1e744a1b17e0edfc8011a41e2d58cac2bf2f66719b7ca00cd42cecdc093.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23bf87ca73b10a1eb9c232246513302b7494e062` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
