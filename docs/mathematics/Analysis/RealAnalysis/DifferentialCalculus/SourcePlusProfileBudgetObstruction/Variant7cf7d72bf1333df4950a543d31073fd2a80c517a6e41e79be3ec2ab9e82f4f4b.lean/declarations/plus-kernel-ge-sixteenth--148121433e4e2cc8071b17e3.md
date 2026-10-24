# plus_kernel_ge_sixteenth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b881bfe-67d3-397b-68b4-1693bcc71afe",
  "kind": "theorem",
  "lexical_name": "plus_kernel_ge_sixteenth",
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
  "slug": "plus-kernel-ge-sixteenth--148121433e4e2cc8071b17e3",
  "source": {
    "blob": "daaca9066dc8ece389401b79c30e4f0cbec35ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:148121433e4e2cc8071b17e3e0003875489b1bc2ac8b79bc6cb303c619b71850",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b881bfe-67d3-397b-68b4-1693bcc71afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plus_kernel_ge_sixteenth (A t : ℝ) (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 8) :
    (1 / 16 : ℝ) ≤ plusCorrelationKernel A t := by
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le (by linarith : 1 ≤ A) t
  rw [abs_of_nonneg ht0] at hc
  have hb : 5 * t / A ≤ (5 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hl : (3 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div (by linarith : 1 ≤ A) t
  have hdb : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  unfold plusCorrelationKernel
  linarith [(abs_le.mp hd).1]

/-- Exact exponentially growing envelope, without an arithmetic sign inference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePlusProfileBudgetObstruction/Variant7cf7d72bf1333df4950a543d31073fd2a80c517a6e41e79be3ec2ab9e82f4f4b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaca9066dc8ece389401b79c30e4f0cbec35ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
