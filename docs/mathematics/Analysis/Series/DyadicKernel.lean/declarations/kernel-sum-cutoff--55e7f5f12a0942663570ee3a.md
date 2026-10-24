# kernel_sum_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b476c905-e02c-e30e-5945-49ee130159a2",
  "kind": "theorem",
  "lexical_name": "kernel_sum_cutoff",
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
  "slug": "kernel-sum-cutoff--55e7f5f12a0942663570ee3a",
  "source": {
    "blob": "057883a5d3295c4261a07c523ac5c099bfcacff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 74,
    "path": "GRWTSK/Analysis/Series/DyadicKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55e7f5f12a0942663570ee3a295d7ad406e231a346634ee44b9a0f82df1a00bb",
  "verification": {
    "reference": "docs/verification/Analysis/Series/DyadicKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b476c905-e02c-e30e-5945-49ee130159a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_sum_cutoff (t s A : ℝ) (ht : 0<t) (hs : 0<s) (hsA : s<A) (N : ℕ) :
    (∑'n : ℕ,kernelTerm t s A n)≤
      ((2:ℝ)^s)^N/((2:ℝ)^s-1)+t^(-A)*((2:ℝ)^(s-A))^N/(1-(2:ℝ)^(s-A)) := by
  have hA : 0≤A := by linarith
  have hp : 1<(2:ℝ)^s := Real.one_lt_rpow (by norm_num) hs
  have hq : (2:ℝ)^(s-A)<1 := ratio_lt_one s A hsA
  have hq0 : 0≤(2:ℝ)^(s-A) := by positivity
  have hsum := kernel_summable t s A ht hA hsA
  have hhead : (∑n∈Finset.range N,kernelTerm t s A n)≤((2:ℝ)^s)^N/((2:ℝ)^s-1) := by
    apply (Finset.sum_le_sum (fun n _ => kernelTerm_le_head t s A ht hA n)).trans
    rw [geom_sum_eq hp.ne']
    exact div_le_div_of_nonneg_right (by linarith) (sub_nonneg.mpr hp.le)
  have htail : (∑'n : ℕ,kernelTerm t s A (n+N))≤
      t^(-A)*((2:ℝ)^(s-A))^N/(1-(2:ℝ)^(s-A)) := by
    have hgeo := (summable_geometric_of_lt_one hq0 hq).mul_left (t^(-A)*((2:ℝ)^(s-A))^N)
    have hb := Summable.tsum_le_tsum (fun n => show kernelTerm t s A (n+N)≤
      (t^(-A)*((2:ℝ)^(s-A))^N)*((2:ℝ)^(s-A))^n by
        simpa only [pow_add,mul_assoc,mul_left_comm,mul_comm] using kernelTerm_le_tail t s A ht hA (n+N))
      ((summable_nat_add_iff N).mpr hsum) hgeo
    rw [tsum_mul_left,tsum_geometric_of_lt_one hq0 hq] at hb
    simpa only [div_eq_mul_inv] using hb
  rw [←hsum.sum_add_tsum_nat_add N]
  exact add_le_add hhead htail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Series/DyadicKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Series/DyadicKernel.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057883a5d3295c4261a07c523ac5c099bfcacff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
