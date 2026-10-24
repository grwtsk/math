# firstPrimeTail_of_sharp_balanced_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29142dd0-6ab4-61df-e35f-9d62ff199a1d",
  "kind": "theorem",
  "lexical_name": "firstPrimeTail_of_sharp_balanced_tail",
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
  "slug": "firstprimetail-of-sharp-balanced-tail--46ea301dd3587683268015ff",
  "source": {
    "blob": "dffd654e5678bff20ce8613335f49036e560ec6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Varianteae9ec9571bdee46ab7d77f88b3fa87f0f2115b099fd6b4a638317efd6a44ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ea301dd3587683268015ff8abb633d93a3d1b27467fae78fc70e7ae24f7f78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Varianteae9ec9571bdee46ab7d77f88b3fa87f0f2115b099fd6b4a638317efd6a44ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29142dd0-6ab4-61df-e35f-9d62ff199a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeTail_of_sharp_balanced_tail (K Q : ℝ) (hK : 0 ≤ K) (hQ : 91 ≤ Q)
    (htail : ∀ A : ℝ, Q ≤ A → -K ≤ balancedFirstPrimeTailWork A) :
    FirstPrimeTailUpperBound := by
  have hs : 1 ≤ Real.sqrt (7 : ℝ) := by
    nlinarith [Real.sqrt_nonneg (7 : ℝ), Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)]
  have hc : 0 ≤ firstPrimeZeroHeadCost Q := by
    unfold firstPrimeZeroHeadCost
    exact mul_nonneg (by positivity) (by linarith)
  have hh : 0 ≤ sharpBalancedHeadCost Q :=
    (abs_nonneg (balancedFirstPrimeHead Q)).trans (balancedFirstPrimeHead_abs_le_sharp hQ)
  refine ⟨sharpBalancedFirstPrimeReturnCost K Q, ?_, Q, by linarith, ?_⟩
  · unfold sharpBalancedFirstPrimeReturnCost
    positivity
  · intro A hA
    exact firstPrime_main_upper_of_sharp_balanced_tail hQ hA (htail A hA)

/-- The exact original all-real source estimate and its original finite prefix are reused. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Varianteae9ec9571bdee46ab7d77f88b3fa87f0f2115b099fd6b4a638317efd6a44ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Varianteae9ec9571bdee46ab7d77f88b3fa87f0f2115b099fd6b4a638317efd6a44ff1.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dffd654e5678bff20ce8613335f49036e560ec6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
