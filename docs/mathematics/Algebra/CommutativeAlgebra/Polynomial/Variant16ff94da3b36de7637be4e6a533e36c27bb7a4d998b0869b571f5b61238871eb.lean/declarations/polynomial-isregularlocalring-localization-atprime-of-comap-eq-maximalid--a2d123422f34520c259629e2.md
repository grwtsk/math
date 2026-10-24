# Polynomial.isRegularLocalRing_localization_atPrime_of_comap_eq_maximalIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5360352c-7c00-6978-c8e4-e41feca0ed34",
  "kind": "lemma",
  "lexical_name": "Polynomial.isRegularLocalRing_localization_atPrime_of_comap_eq_maximalIdeal",
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
  "slug": "polynomial-isregularlocalring-localization-atprime-of-comap-eq-maximalid--a2d123422f34520c259629e2",
  "source": {
    "blob": "52e891a42dd07c72d905a1e91e57bed874ad8ada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 43,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant16ff94da3b36de7637be4e6a533e36c27bb7a4d998b0869b571f5b61238871eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d123422f34520c259629e273b9bc26a56a17e4e9b1cc2e306d1345de06e316",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant16ff94da3b36de7637be4e6a533e36c27bb7a4d998b0869b571f5b61238871eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5360352c-7c00-6978-c8e4-e41feca0ed34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Polynomial.isRegularLocalRing_localization_atPrime_of_comap_eq_maximalIdeal
    [IsRegularLocalRing R] (p : Ideal R[X]) [p.IsPrime] (max : p.comap C = maximalIdeal R) :
    IsRegularLocalRing (Localization.AtPrime p) := by
  apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
  let q := (maximalIdeal R).map C
  have qle : q ≤ p := by simpa [q, ← max] using map_comap_le
  have reg := (isRegularLocalRing_iff R).mp ‹_›
  have fg' := (maximalIdeal R).fg_of_isNoetherianRing
  have fg := Submodule.FG.finite_generators fg'
  have ht : (maximalIdeal R).height ≤ q.height := le_of_eq (height_map_C (maximalIdeal R)).symm
  by_cases eq : p = q
  · have ht1 : (maximalIdeal R).height ≤ p.height := by simpa [eq]
    have : Ideal.span ((algebraMap R (Localization.AtPrime p)) '' (maximalIdeal R).generators) =
      maximalIdeal (Localization.AtPrime p) := by
      rw [IsScalarTower.algebraMap_eq R R[X] (Localization.AtPrime p), RingHom.coe_comp,
        Set.image_comp, ← Ideal.map_span, ← Ideal.map_span]
      simp only [Ideal.span, (maximalIdeal R).span_generators, algebraMap_eq, q, ← eq,
        Localization.AtPrime.map_eq_maximalIdeal]
    simp only [← maximalIdeal_height_eq_ringKrullDim, ← IsLocalization.height_under p.primeCompl,
      IsLocalization.AtPrime.under_maximalIdeal _ p, ge_iff_le]
    apply le_trans _ (WithBot.coe_le_coe.mpr ht1)
    simp only [maximalIdeal_height_eq_ringKrullDim, ← reg, Nat.cast_le, ← this,
      ← Submodule.FG.generators_ncard fg']
    exact (Submodule.spanFinrank_span_le_ncard_of_finite (fg.image _)).trans (Set.ncard_image_le fg)
  · have lt : q < p := lt_of_le_of_ne qle (Ne.symm eq)
    have : (comap C p).IsMaximal := by simpa [max] using maximalIdeal.isMaximal R
    obtain ⟨y, _, hy⟩ := Polynomial.exists_monic_span_sup_map_eq R p this (by simpa [max])
    have peq : p = Ideal.span (((algebraMap R R[X]) '' (maximalIdeal R).generators) ∪ {y}) := by
      simp only [Set.union_comm, Ideal.span_union, ← Ideal.map_span, algebraMap_eq, sup_comm]
      nth_rw 1 [hy, max, ← (maximalIdeal R).span_generators]
    simp only [← Localization.AtPrime.map_eq_maximalIdeal, peq, Ideal.map_span]
    rw [← maximalIdeal_height_eq_ringKrullDim, ← IsLocalization.height_under p.primeCompl,
      IsLocalization.AtPrime.under_maximalIdeal _ p]
    apply le_trans _ (WithBot.coe_le_coe.mpr (Ideal.height_add_one_le_of_lt_of_isPrime lt))
    apply le_trans _ (WithBot.coe_le_coe.mpr (add_le_add_left ht 1))
    rw [WithBot.coe_add, maximalIdeal_height_eq_ringKrullDim, WithBot.coe_one, ← reg,
      ← Nat.cast_one, ← Nat.cast_add, Nat.cast_le]
    have fin := (fg.image (algebraMap R R[X])).union (Set.finite_singleton y)
    apply le_trans (Submodule.spanFinrank_span_le_ncard_of_finite (fin.image _))
    apply le_trans (Set.ncard_image_le fin) (le_trans (Set.ncard_union_le _ _) _)
    rw [Set.ncard_singleton, add_le_add_iff_right, ← Submodule.FG.generators_ncard fg']
    exact Set.ncard_image_le fg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant16ff94da3b36de7637be4e6a533e36c27bb7a4d998b0869b571f5b61238871eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant16ff94da3b36de7637be4e6a533e36c27bb7a4d998b0869b571f5b61238871eb.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e891a42dd07c72d905a1e91e57bed874ad8ada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
