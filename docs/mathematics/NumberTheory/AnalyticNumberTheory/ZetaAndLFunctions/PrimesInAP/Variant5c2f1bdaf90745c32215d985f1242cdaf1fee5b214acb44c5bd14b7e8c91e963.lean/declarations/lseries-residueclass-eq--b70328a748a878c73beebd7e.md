# LSeries_residueClass_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3662176-e6e7-2121-3099-4f61032dea57",
  "kind": "lemma",
  "lexical_name": "LSeries_residueClass_eq",
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
  "slug": "lseries-residueclass-eq--b70328a748a878c73beebd7e",
  "source": {
    "blob": "5e35a5a8dcca8824941af102c2b0fdabd6abecb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 289,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b70328a748a878c73beebd7ede57357b1ecf75d7f2111bf24b08fa67bf1667f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3662176-e6e7-2121-3099-4f61032dea57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_residueClass_eq (ha : IsUnit a) {s : ℂ} (hs : 1 < s.re) :
    LSeries ↗(residueClass a) s =
      -(q.totient : ℂ)⁻¹ * ∑ χ : DirichletCharacter ℂ q, χ a⁻¹ *
        (deriv (LFunction χ) s / LFunction χ s) := by
  simp only [deriv_LFunction_eq_deriv_LSeries _ hs, LFunction_eq_LSeries _ hs, neg_mul, ← mul_neg,
    ← Finset.sum_neg_distrib, ← neg_div, ← LSeries_twist_vonMangoldt_eq _ hs]
  rw [eq_inv_mul_iff_mul_eq₀ <| mod_cast (Nat.totient_pos.mpr q.pos_of_neZero).ne']
  simp_rw [← LSeries_smul,
    ← LSeries_sum <| fun χ _ ↦ (LSeriesSummable_twist_vonMangoldt χ hs).smul _]
  refine LSeries_congr s fun {n} _ ↦ ?_
  simp only [Pi.smul_apply, residueClass_apply ha, smul_eq_mul, ← mul_assoc,
    mul_inv_cancel_of_invertible, one_mul, Finset.sum_apply, Pi.mul_apply]

variable (a)

open Classical in
/-- The auxiliary function used, e.g., with the Wiener-Ikehara Theorem to prove
Dirichlet's Theorem. On `re s > 1`, it agrees with the L-series of the von Mangoldt
function restricted to the residue class `a : ZMod q` minus the principal part
`(q.totient)⁻¹/(s-1)` of the pole at `s = 1`;
see `ArithmeticFunction.vonMangoldt.eqOn_LFunctionResidueClassAux`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e35a5a8dcca8824941af102c2b0fdabd6abecb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
