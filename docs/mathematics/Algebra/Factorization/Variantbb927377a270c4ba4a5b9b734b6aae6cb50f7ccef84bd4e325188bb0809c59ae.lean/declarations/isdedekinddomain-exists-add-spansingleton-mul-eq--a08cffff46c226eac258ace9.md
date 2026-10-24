# IsDedekindDomain.exists_add_spanSingleton_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 670,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:352f36c5-b1be-31e5-546a-ee70b2fecb15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:323fc5b8-ec8e-79fa-fef3-790f61c4cd9f",
  "kind": "lemma",
  "lexical_name": "IsDedekindDomain.exists_add_spanSingleton_mul_eq",
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
  "slug": "isdedekinddomain-exists-add-spansingleton-mul-eq--a08cffff46c226eac258ace9",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 670,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a08cffff46c226eac258ace97a0633b4fa32fc4306ebb2d5aa08e1081cdf94ca",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:323fc5b8-ec8e-79fa-fef3-790f61c4cd9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDedekindDomain.exists_add_spanSingleton_mul_eq
    {a b c : FractionalIdeal R⁰ K} (hac : a ≤ c) (ha : a ≠ 0) (hb : b ≠ 0) :
    ∃ x : K, a + FractionalIdeal.spanSingleton R⁰ x * b = c := by
  wlog hb' : b = 1
  · obtain ⟨x, e⟩ := this (a := b⁻¹ * a) (b := 1) (c := b⁻¹ * c) (by gcongr) (by simp [ha, hb])
      one_ne_zero rfl
    use x
    simpa [hb, ← mul_assoc, mul_add, mul_comm b (.spanSingleton _ _)] using congr(b * $e)
  subst hb'
  have H : Ideal.span {c.den.1} * a.num ≤ c.num * Ideal.span {a.den.1} := by
    rw [← FractionalIdeal.coeIdeal_le_coeIdeal K]
    simp only [FractionalIdeal.coeIdeal_mul, FractionalIdeal.coeIdeal_span_singleton, ←
      FractionalIdeal.den_mul_self_eq_num']
    ring_nf
    gcongr
  obtain ⟨x, hx⟩ := exists_sup_span_eq H
    (by simpa using FractionalIdeal.num_eq_zero_iff.not.mpr ha)
  refine ⟨algebraMap R K x / algebraMap R K (a.den.1 * c.den.1), ?_⟩
  refine mul_left_injective₀ (b := .spanSingleton _
    (algebraMap R K (a.den.1 * c.den.1))) ?_ ?_
  · simp [FractionalIdeal.spanSingleton_eq_zero_iff]
  · simp only [map_mul, mul_one, add_mul, FractionalIdeal.spanSingleton_mul_spanSingleton,
      isUnit_iff_ne_zero, ne_eq, mul_eq_zero, FaithfulSMul.algebraMap_eq_zero_iff,
      nonZeroDivisors.coe_ne_zero, or_self, not_false_eq_true, IsUnit.div_mul_cancel]
    rw [← FractionalIdeal.spanSingleton_mul_spanSingleton, ← mul_assoc, mul_comm a,
      FractionalIdeal.den_mul_self_eq_num', ← mul_assoc, mul_right_comm,
      mul_comm c, FractionalIdeal.den_mul_self_eq_num', mul_comm]
    simp_rw [← FractionalIdeal.coeIdeal_span_singleton, ← FractionalIdeal.coeIdeal_mul,
      ← hx, ← FractionalIdeal.coeIdeal_sup]

namespace FractionalIdeal

/-- `c.divMod b a` (i.e. `c / b mod a`) is an arbitrary `x` such that `c = bx + a`.
This is zero if the above is not possible, i.e. when `a = 0` or `b = 0` or `¬ a ≤ c`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
