# weighted_fourier_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f04bfcd1-eae7-92e9-4d4d-d114f85e3261",
  "kind": "theorem",
  "lexical_name": "weighted_fourier_majorant",
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
  "slug": "weighted-fourier-majorant--113b84ec2e3584191af67f21",
  "source": {
    "blob": "12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:113b84ec2e3584191af67f212264dd326bfb837a410df937d1f80479f988f741",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04bfcd1-eae7-92e9-4d4d-d114f85e3261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    logarithmicWeight ξ * n ^ 2 ≤ (b ^ 2 + d ^ 2) * fourierEnvelope ξ := by
  have hu := unweighted_fourier_majorant ξ n b d hn hnb hnd
  have hl := log_fourier_majorant ξ n b d hn hnb hnd
  calc
    logarithmicWeight ξ * n ^ 2 = n ^ 2 + (Real.log (1 + 4 * ξ ^ 2) * n ^ 2) / 2 := by
      unfold logarithmicWeight
      ring
    _ ≤ (b ^ 2 + d ^ 2) * (1 + ξ ^ 2)⁻¹ +
        ((16 * (b ^ 2 + d ^ 2)) * (1 + ξ ^ 2) ^ (-(3 / 4 : ℝ))) / 2 :=
      add_le_add hu (div_le_div_of_nonneg_right hl (by norm_num))
    _ = (b ^ 2 + d ^ 2) * fourierEnvelope ξ := by
      unfold fourierEnvelope
      ring

/-- The complete weighted Fourier square is integrable under explicit analytic premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant8e8e7fe8f761b0d2893b750bd7ecf3b05cfcf05eaeb0294d2e02d19e43e7cec4.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b8ffa2b1b08a64e1c65a65e9a12d9ef641b3cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
