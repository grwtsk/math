# literal_native_clock_exact_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07cf2e7-ac1b-1a96-cafe-4318f1d3e21d",
  "kind": "theorem",
  "lexical_name": "literal_native_clock_exact_integral",
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
  "slug": "literal-native-clock-exact-integral--755e61386f5392655ee0540f",
  "source": {
    "blob": "57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:755e61386f5392655ee0540fbcf6d9a4dcc357754d42ffdfb869fc444e856956",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07cf2e7-ac1b-1a96-cafe-4318f1d3e21d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_native_clock_exact_integral {α t₀ : ℝ} (hα : BadlyApproximable α)
    (ht₀ : 0 < t₀) (j : ℕ) :
    (∫ t in recordTime hα ht₀ j..recordTime hα ht₀ (j+1),Real.exp (-t/2)) =
      nativeClock hα ht₀ j := by
  have hd (x : ℝ) : HasDerivAt (fun t : ℝ ↦ -2*Real.exp (-t/2)) (Real.exp (-x/2)) x := by
    have h := ((Real.hasDerivAt_exp (-x/2)).comp x ((hasDerivAt_id x).neg.div_const
      2)).const_mul (-2)
    have he : (-2 : ℝ)*(Real.exp (-x/2)*(-1/2)) = Real.exp (-x/2) := by ring
    simpa only [he] using! h
  have hi : IntervalIntegrable (fun t : ℝ ↦ Real.exp (-t/2)) volume
      (recordTime hα ht₀ j) (recordTime hα ht₀ (j+1)) :=
    (by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (-t/2))).intervalIntegrable _ _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ ↦ hd x) hi]
  unfold nativeClock
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
