# integral_sq_le_length_mul_integral_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dc81800-7c25-4f92-26da-052769d45d85",
  "kind": "theorem",
  "lexical_name": "integral_sq_le_length_mul_integral_sq",
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
  "slug": "integral-sq-le-length-mul-integral-sq--6d95abef42f157e26a3de2ed",
  "source": {
    "blob": "0f2181af98b4b4d12847e2e6f33ba5d764a007b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 92,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d95abef42f157e26a3de2edbd7f270f221f787fec2a022311bd85f73c323654",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dc81800-7c25-4f92-26da-052769d45d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sq_le_length_mul_integral_sq {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b) (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun u => f u ^ 2) volume a b) :
    |∫ u in a..b, f u| ^ 2 ≤ (b - a) * (∫ u in a..b, f u ^ 2) := by
  rcases eq_or_lt_of_le hab with rfl | hab
  · simp
  have hL : 0 < b - a := sub_pos.mpr hab
  let y : ℝ := ∫ u in a..b, f u
  let c : ℝ := y / (b - a)
  have hvar : 0 ≤ ∫ u in a..b, (f u - c) ^ 2 :=
    intervalIntegral.integral_nonneg_of_forall hab.le (fun _ => sq_nonneg _)
  have hv : (∫ u in a..b, (f u - c) ^ 2) =
      (∫ u in a..b, f u ^ 2) - 2 * c * y + (b - a) * c ^ 2 := by
    calc
      _ = ∫ u in a..b, (f u ^ 2 - (2 * c) * f u) + c ^ 2 :=
        intervalIntegral.integral_congr (fun _ _ => by ring)
      _ = _ := by
        rw [intervalIntegral.integral_add (hf2.sub (hf.const_mul _))
          (continuous_const.intervalIntegrable a b),
          intervalIntegral.integral_sub hf2 (hf.const_mul _),
          intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
        rfl
  have hid : (b - a) * ((∫ u in a..b, f u ^ 2) - 2 * c * y + (b - a) * c ^ 2) =
      (b - a) * (∫ u in a..b, f u ^ 2) - y ^ 2 := by
    dsimp [c]
    field_simp
    ring
  have hn := mul_nonneg hL.le hvar
  rw [hv, hid] at hn
  simpa only [sq_abs, y] using (sub_nonneg.mp hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f2181af98b4b4d12847e2e6f33ba5d764a007b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
