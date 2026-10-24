# actualLogSource_zero_outside

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ad88c98-6a3b-60bf-9982-6bdf1c34b2ba",
  "kind": "theorem",
  "lexical_name": "actualLogSource_zero_outside",
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
  "slug": "actuallogsource-zero-outside--89dc0351d6af87498ebe4a06",
  "source": {
    "blob": "afc96ae354161924074c51ccb38ff9acb312b3fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89dc0351d6af87498ebe4a06785fde910489d6394d714172141089be0c88da4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ad88c98-6a3b-60bf-9982-6bdf1c34b2ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogSource_zero_outside {A x : ℝ} (hA : 0 < A)
    (hx : x ≤ Real.exp (-A) ∨ Real.exp A ≤ x) : actualLogSource A x = 0 := by
  by_cases hp : 0 < x
  · have hl : A ≤ |Real.log x| := by
      rcases hx with hx | hx
      · have he : Real.log x ≤ -A := by
          exact Real.exp_le_exp.mp (by simpa only [Real.exp_log hp] using hx)
        have hab := neg_le_abs (Real.log x)
        linarith
      · have he : A ≤ Real.log x := by
          exact Real.exp_le_exp.mp (by simpa only [Real.exp_log hp] using hx)
        exact he.trans (le_abs_self _)
    simp only [actualLogSource,positiveLogLift,if_pos hp,
      normalizedTest_zero_of_le_abs A (Real.log x) hA hl,mul_zero]
  · simp [actualLogSource,positiveLogLift,hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttemptrebuild01/Variantd0f8e47bff782922f84ddce42136553ab510708510546ca6c084c6e7497a13cb.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc96ae354161924074c51ccb38ff9acb312b3fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
