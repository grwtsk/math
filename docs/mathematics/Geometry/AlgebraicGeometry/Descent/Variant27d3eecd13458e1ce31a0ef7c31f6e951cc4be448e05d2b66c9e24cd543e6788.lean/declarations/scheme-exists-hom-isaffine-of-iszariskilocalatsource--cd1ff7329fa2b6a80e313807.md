# Scheme.exists_hom_isAffine_of_isZariskiLocalAtSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75c60eed-b79c-7c55-20c6-3bf0417f504e",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_hom_isAffine_of_isZariskiLocalAtSource",
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
  "slug": "scheme-exists-hom-isaffine-of-iszariskilocalatsource--cd1ff7329fa2b6a80e313807",
  "source": {
    "blob": "effb8e29a9443f0507ce82a46a7ad8c4c8405206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 56,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd1ff7329fa2b6a80e313807f35f4c611ce4dbe7d5b463e53b6c9da3518d1553",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75c60eed-b79c-7c55-20c6-3bf0417f504e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_hom_isAffine_of_isZariskiLocalAtSource (X : Scheme.{u}) [CompactSpace X]
    [IsZariskiLocalAtSource P] [P.ContainsIdentities] :
    ∃ (Y : Scheme.{u}) (p : Y ⟶ X), Surjective p ∧ P p ∧ IsAffine Y := by
  let 𝒰 := X.affineCover.finiteSubcover
  let p : ∐ (fun i : 𝒰.I₀ ↦ 𝒰.X i) ⟶ X := Sigma.desc (fun i ↦ 𝒰.f i)
  refine ⟨_, p, ⟨fun x ↦ ?_⟩, ?_, inferInstance⟩
  · obtain ⟨i, x, rfl⟩ := X.affineCover.finiteSubcover.exists_eq x
    use Sigma.ι X.affineCover.finiteSubcover.X i x
    rw [← Scheme.Hom.comp_apply, Sigma.ι_comp_desc]
  · rw [IsZariskiLocalAtSource.iff_of_openCover (P := P) (sigmaOpenCover _)]
    exact fun i ↦ by simpa [p] using IsZariskiLocalAtSource.of_isOpenImmersion _

set_option backward.isDefEq.respectTransparency false in
/-- If `P` is local at the target, to show `P` descends along `P'` we may assume
the base to be affine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `effb8e29a9443f0507ce82a46a7ad8c4c8405206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
