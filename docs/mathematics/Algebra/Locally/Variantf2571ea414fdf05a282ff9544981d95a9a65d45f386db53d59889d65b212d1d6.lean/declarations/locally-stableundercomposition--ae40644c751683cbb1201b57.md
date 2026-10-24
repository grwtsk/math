# locally_stableUnderComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acfbce38-ebfc-03d4-621d-735fd69f093c",
  "kind": "lemma",
  "lexical_name": "locally_stableUnderComposition",
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
  "slug": "locally-stableundercomposition--ae40644c751683cbb1201b57",
  "source": {
    "blob": "36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 204,
    "path": "GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae40644c751683cbb1201b57a9b8463aaef30ed57e8d9b2827bab6af049610c3",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acfbce38-ebfc-03d4-621d-735fd69f093c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_stableUnderComposition (hPi : RespectsIso P) (hPl : LocalizationPreserves P)
    (hPc : StableUnderComposition P) :
    StableUnderComposition (Locally P) := by
  classical
  intro R S T _ _ _ f g hf hg
  rw [locally_iff_finite] at hf hg
  obtain ⟨sf, hsfone, hsf⟩ := hf
  obtain ⟨sg, hsgone, hsg⟩ := hg
  rw [locally_iff_exists hPi]
  refine ⟨sf × sg, fun (a, b) ↦ g a * b, ?_,
      fun (a, b) ↦ Localization.Away ((algebraMap T (Localization.Away b.val)) (g a.val)),
      inferInstance, inferInstance, inferInstance, ?_⟩
  · rw [eq_top_iff, ← hsgone, Ideal.span_le]
    intro t ht
    have : 1 ∈ Ideal.span (Set.range <| fun a : sf ↦ a.val) := by simp [hsfone]
    simp only [Ideal.mem_span_range_iff_exists_fun, SetLike.mem_coe] at this ⊢
    obtain ⟨cf, hcf⟩ := this
    let cg : sg → T := Pi.single ⟨t, ht⟩ 1
    use fun (a, b) ↦ g (cf a) * cg b
    simp [cg, Pi.single_apply, Fintype.sum_prod_type, ← mul_assoc, ← Finset.sum_mul, ← map_mul,
      ← map_sum, hcf] at hcf ⊢
  · intro ⟨a, b⟩
    let g' := (algebraMap T (Localization.Away b.val)).comp g
    let a' := (algebraMap T (Localization.Away b.val)) (g a.val)
    have : (algebraMap T <| Localization.Away a').comp (g.comp f) =
        (Localization.awayMap g' a.val).comp ((algebraMap S (Localization.Away a.val)).comp f) := by
      ext x
      simp only [coe_comp, Function.comp_apply, a']
      change _ = Localization.awayMap g' a.val (algebraMap S _ (f x))
      simp only [Localization.awayMap, IsLocalization.Away.map, IsLocalization.map_eq]
      rfl
    simp only [this, a']
    apply hPc _ _ (hsf a.val a.property)
    apply @hPl _ _ _ _ g' _ _ _ _ _ _ _ _ ?_ (hsg b.val b.property)
    exact IsLocalization.Away.instMapRingHomPowersOfCoe (Localization.Away (g' a.val)) a.val

/-- If `P` is stable under composition with localization away maps on the right,
then so is `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
