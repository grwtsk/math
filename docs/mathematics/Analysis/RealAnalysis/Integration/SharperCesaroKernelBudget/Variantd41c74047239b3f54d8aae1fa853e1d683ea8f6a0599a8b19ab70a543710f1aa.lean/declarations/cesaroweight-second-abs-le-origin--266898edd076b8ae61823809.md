# cesaroWeight_second_abs_le_origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d100c18-8fa9-2ea8-a397-fc74db138ee2",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_second_abs_le_origin",
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
  "slug": "cesaroweight-second-abs-le-origin--266898edd076b8ae61823809",
  "source": {
    "blob": "930869bd4577b8d63d0b2d796c4b33b584f4ff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:266898edd076b8ae61823809fb79a3e439be19d6e30815734b3e90ddc6258466",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d100c18-8fa9-2ea8-a397-fc74db138ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_second_abs_le_origin (A t : ℝ) (hA : 91 ≤ A)
    (ht : 0 ≤ t) :
    |deriv (deriv (cesaroWeight A)) t| ≤ 67 / A ^ 4 * t + 10 / A ^ 2 := by
  have h3 := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at h3
  have h2 := actualCorrelation_second_abs_le_twenty hA t
  rw [cesaroWeight_second_deriv A t (by linarith : 0 < A)]
  have hb := abs_add_le
    (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hb
  have h2h : |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| / 2 ≤
      10 / A ^ 2 := by
    calc
      _ ≤ (20 / A ^ 2) / 2 := div_le_div_of_nonneg_right h2 (by norm_num)
      _ = _ := by ring
  exact hb.trans (add_le_add h3 h2h)

/-- Both actual zero traces give a triangular third-derivative envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `930869bd4577b8d63d0b2d796c4b33b584f4ff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
