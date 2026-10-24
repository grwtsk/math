# actualRelativeAffineKernelPayment_Pnt_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bba53bc0-2acf-0b78-b98d-9fc596761019",
  "kind": "theorem",
  "lexical_name": "actualRelativeAffineKernelPayment_Pnt_bound",
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
  "slug": "actualrelativeaffinekernelpayment-pnt-bound--5db1f616532bbaff43b0a8db",
  "source": {
    "blob": "112d77f199893abd9cb417d6e6670f49b143db83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant927a0a733e3231ddb39d62e56017164223e4022a55046b725ff6cd74f67e67aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db1f616532bbaff43b0a8db449ef13bc1814dfd52c4bde8a96ea33931ef5e48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant927a0a733e3231ddb39d62e56017164223e4022a55046b725ff6cd74f67e67aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba53bc0-2acf-0b78-b98d-9fc596761019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeAffineKernelPayment_Pnt_bound :
    ∃ c > 0, ∃ C > 0, ∃ R ≥ (1:ℝ), ∀ A : ℝ, R ≤ A →
      |actualRelativeAffineKernelPayment A| ≤
        C * (4*A+13) * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hb⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hb.bound
  refine ⟨c,hc,C,hC,max 1 ((T+1)/2),le_max_left _ _,?_⟩
  intro A hA
  have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
  have ht : T ≤ 2*A-1 := by
    have hh := (le_max_right 1 ((T+1)/2)).trans hA
    linarith
  have hL : |relativePsiError (2*A-1)| ≤
      C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
    simpa only [← relative_eq_actual, Real.norm_eq_abs, Real.abs_exp] using hT _ ht
  have hU : |relativePsiError (2*A)| ≤
      C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
    have hh := hT (2*A) (by linarith)
    simp only [← relative_eq_actual, Real.norm_eq_abs, Real.abs_exp] at hh
    have hr := Real.rpow_le_rpow (by linarith : 0 ≤ 2*A-1)
      (by linarith : 2*A-1 ≤ 2*A) (by norm_num : (0:ℝ) ≤ 1/10)
    have he : Real.exp (-c*(2*A)^((1:ℝ)/10)) ≤
        Real.exp (-c*(2*A-1)^((1:ℝ)/10)) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    exact hh.trans (mul_le_mul_of_nonneg_left he hC.le)
  have hdiff := (abs_sub _ _).trans (add_le_add hU hL)
  have hpay := actualRelativeAffineKernelPayment_abs_le hA1
  calc
    _ ≤ C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) +
        (2*A+6)*(C * Real.exp (-c*(2*A-1)^((1:ℝ)/10)) +
          C * Real.exp (-c*(2*A-1)^((1:ℝ)/10))) :=
      hpay.trans (add_le_add hU (mul_le_mul_of_nonneg_left hdiff (by linarith)))
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant927a0a733e3231ddb39d62e56017164223e4022a55046b725ff6cd74f67e67aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant927a0a733e3231ddb39d62e56017164223e4022a55046b725ff6cd74f67e67aa.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112d77f199893abd9cb417d6e6670f49b143db83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
