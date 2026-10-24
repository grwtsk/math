# cellDerivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f366fbec-7693-d4b1-8da1-6d57711695db",
  "kind": "theorem",
  "lexical_name": "cellDerivative_bound",
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
  "slug": "cellderivative-bound--88f897867c151dced449bb3a",
  "source": {
    "blob": "0a95a61731336c20a77673a50b63556ebf9ad04d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f897867c151dced449bb3a35d87975cc792f209fcf256da2cd991223cae9b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f366fbec-7693-d4b1-8da1-6d57711695db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellDerivative_bound {n : ℕ} (hn : 0 < n) {s x : ℝ} (hs : (1:ℝ)/2 < s)
    (hx : x ∈ Ioc (n:ℝ) (n+1)) : |cellDerivative n s x| ≤ derivativeMajorant n := by
  have hn1 : (1:ℝ) ≤ n := by exact_mod_cast (show 1≤n by omega)
  have hp : 0 < x := (show (0:ℝ)<n by exact_mod_cast hn).trans hx.1
  have hl0 : 0 ≤ Real.log x := Real.log_nonneg (hn1.trans hx.1.le)
  have hn0 : 0 < (n:ℝ) := by exact_mod_cast hn
  have hlog : Real.log x ≤ Real.log (n+1:ℝ) := Real.log_le_log hp hx.2
  have hden : (n:ℝ)^((3:ℝ)/2) ≤ x^(s+1) := by
    calc
      _ ≤ (n:ℝ)^(s+1) := Real.rpow_le_rpow_of_exponent_le hn1 (by linarith)
      _ ≤ _ := Real.rpow_le_rpow hn0.le hx.1.le (by linarith)
  have hxsub : 0 ≤ x-n := sub_nonneg.mpr hx.1.le
  have hxone : x-n ≤ 1 := by linarith [hx.2]
  unfold cellDerivative derivativeMajorant
  rw [abs_neg,abs_of_nonneg (by positivity)]
  apply (div_le_div_of_nonneg_left (by positivity : 0≤(x-n)*Real.log x)
    (Real.rpow_pos_of_pos hn0 _) hden).trans
  apply div_le_div_of_nonneg_right _ (Real.rpow_pos_of_pos hn0 _).le
  exact (mul_le_of_le_one_left hl0 hxone).trans hlog

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a95a61731336c20a77673a50b63556ebf9ad04d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
