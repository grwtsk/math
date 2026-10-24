# cauchy_bound_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48ab4c0c-7c75-cbc4-d720-46e9fdff92ae",
  "kind": "lemma",
  "lexical_name": "cauchy_bound_le",
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
  "slug": "cauchy-bound-le--8cd8e3916ef158c7507e6192",
  "source": {
    "blob": "b42c6d3993eb756afcffbde22bacb5f0e057649a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd8e3916ef158c7507e61927736749dce077d1339dd27741fcbcad88b6d8d32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ab4c0c-7c75-cbc4-d720-46e9fdff92ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchy_bound_le (k : ℕ) (hk : 1 ≤ k) {x : ℝ} (hx : 0 < x) :
    k.factorial * Real.exp (-(2 / (9 * x))) / (x / 2) ^ k ≤ (18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) := by
  set u : ℝ := 2 / (9 * x) with hu
  have hu0 : 0 ≤ u := by positivity
  have hxu : (x / 2)⁻¹ = 9 * u := by rw [hu]; field_simp
  have hkey := pow_mul_exp_neg_le k hk hu0
  have hfac : (k.factorial : ℝ) ≤ (k : ℝ) ^ k := by exact_mod_cast Nat.factorial_le_pow k
  rw [div_eq_mul_inv, ← inv_pow, hxu, mul_pow]
  -- k! * e^{-u} * (9^k u^k) ≤ k^k * 9^k (k/e)^k ≤ (18/e)^k k^{2k}
  have h9 : (0:ℝ) ≤ 9 ^ k := by positivity
  calc (k.factorial : ℝ) * Real.exp (-u) * ((9:ℝ) ^ k * u ^ k)
      = (k.factorial : ℝ) * (9:ℝ) ^ k * (u ^ k * Real.exp (-u)) := by ring
    _ ≤ (k : ℝ) ^ k * (9:ℝ) ^ k * (((k : ℝ) / Real.exp 1) ^ k) := by
        gcongr
    _ = (9 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) := by rw [div_pow, div_pow, pow_mul]; ring
    _ ≤ (18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) := by
        gcongr; norm_num

end Gevrey2

open Gevrey2 in
/-- **(P1)** Gevrey-2 bound for exp(−1/x): |g^{(k)}(x)| ≤ (18/e)^k k^{2k} for all k ≥ 1 and all real x
(Cauchy's estimate for G(z) = exp(−1/z) on the circle |z − x| = x/2, where ‖G‖ ≤ exp(−2/(9x))). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant2c72d72910eae1b731aec5d7f6c253ed4afb7881de7ea98444596e178e17a15a.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b42c6d3993eb756afcffbde22bacb5f0e057649a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
