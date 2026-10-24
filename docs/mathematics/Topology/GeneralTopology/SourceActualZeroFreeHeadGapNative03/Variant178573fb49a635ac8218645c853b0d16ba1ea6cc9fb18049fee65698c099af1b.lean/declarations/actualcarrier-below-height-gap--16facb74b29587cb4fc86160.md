# actualCarrier_below_height_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5368314c-b149-79e8-57b6-7fcab7d18c37",
  "kind": "theorem",
  "lexical_name": "actualCarrier_below_height_gap",
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
  "slug": "actualcarrier-below-height-gap--16facb74b29587cb4fc86160",
  "source": {
    "blob": "9ddcb44850d4033e0128464c582f9346e602aa2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16facb74b29587cb4fc86160e49a6dc9b34512d82dabfced1d6e80e7214fad10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5368314c-b149-79e8-57b6-7fcab7d18c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCarrier_below_height_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ R : ℝ, 3 < R → ∀ rho : (zetaZeros zetaSeam).carrier,
        3 < |(rho : ℂ).im| → |(rho : ℂ).im| < R →
        a / (Real.log R) ^ 9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log R) ^ 9 := by
  obtain ⟨a, ha, hg⟩ := actualCarrier_zero_free_gap
  refine ⟨a, ha, fun R hR rho ht hheight => ?_⟩
  have htpos : 0 < |(rho : ℂ).im| := by linarith
  have hl : 0 < Real.log |(rho : ℂ).im| := Real.log_pos (by linarith)
  have hlR : Real.log |(rho : ℂ).im| ≤ Real.log R :=
    Real.log_le_log htpos hheight.le
  have hd : (Real.log |(rho : ℂ).im|) ^ 9 ≤ (Real.log R) ^ 9 :=
    pow_le_pow_left₀ hl.le hlR 9
  have hratio : a / (Real.log R) ^ 9 ≤ a / (Real.log |(rho : ℂ).im|) ^ 9 :=
    div_le_div_of_nonneg_left ha.1.le (by positivity) hd
  have hh := hg rho ht
  exact ⟨hratio.trans_lt hh.1, hh.2.trans_le (by linarith)⟩

/-- The accepted moving height only changes the exponential exponent by O(A^-8). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ddcb44850d4033e0128464c582f9346e602aa2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
