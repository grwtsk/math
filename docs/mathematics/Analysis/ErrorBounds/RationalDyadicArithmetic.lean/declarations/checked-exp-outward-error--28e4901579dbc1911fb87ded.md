# checked_exp_outward_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86db05af-9a77-903b-c5ad-d06f1fda916a",
  "kind": "theorem",
  "lexical_name": "checked_exp_outward_error",
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
  "slug": "checked-exp-outward-error--28e4901579dbc1911fb87ded",
  "source": {
    "blob": "0343df4901aad3635a6f3f4422a62b69a24e6af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 181,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e4901579dbc1911fb87dedb84a6e0deffa4f8b406dd71db971f71686f22e63",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86db05af-9a77-903b-c5ad-d06f1fda916a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checked_exp_outward_error (bits : ℕ) {w : Coordinates} {B : ℚ} {s M : ℕ}
    {tr : RationalExpTrace.Trace} (hc : RationalExpTrace.check w B s M tr = true) :
    ‖Complex.exp (toComplex w) - toComplex (RationalExpTrace.valueAt tr s)‖ ≤
      (outwardPropagation bits (RationalExpTrace.seedTail B s M + tr.seedRadius)
        (RationalExpTrace.radiusAt tr) s : ℝ) := by
  obtain ⟨_, hB, _, _, _, hseed, hsteps⟩ := (RationalExpTrace.check_iff_valid _ _ _ _ _).mp hc
  have hB0 : 0 ≤ B := by
    have hb := (inBall_iff _ _).mp hB
    have : (0 : ℝ) ≤ B := (norm_nonneg _).trans hb
    exact_mod_cast this
  have hs0 : 0 ≤ tr.seedRadius := by
    have hs := (inBall_iff _ _).mp hseed
    have : (0 : ℝ) ≤ tr.seedRadius := (norm_nonneg _).trans hs
    exact_mod_cast this
  have he : 0 ≤ RationalExpTrace.seedTail B s M + tr.seedRadius := by
    unfold RationalExpTrace.seedTail
    positivity
  have hr : ∀ j < s, 0 ≤ RationalExpTrace.radiusAt tr j := by
    intro j hj
    have hb := (inBall_iff _ _).mp (hsteps j (Finset.mem_range.mpr hj))
    have : (0 : ℝ) ≤ RationalExpTrace.radiusAt tr j := (norm_nonneg _).trans hb
    exact_mod_cast this
  apply (RationalExpTrace.check_sound hc).trans
  change (RationalExpTrace.propagate (RationalExpTrace.seedTail B s M + tr.seedRadius)
      (RationalExpTrace.radiusAt tr) s : ℝ) ≤ _
  exact_mod_cast propagate_le_outward bits he s hr

end GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0343df4901aad3635a6f3f4422a62b69a24e6af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
