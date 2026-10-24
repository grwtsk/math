# physical_mean_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5edad01e-6ef1-1ba4-689d-a33149005463",
  "kind": "theorem",
  "lexical_name": "physical_mean_integral",
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
  "slug": "physical-mean-integral--579b2972b0e521ddf3fc46e7",
  "source": {
    "blob": "ed1e5b9df08736766efc1f8e21aa71100465b71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variante61e7e0c6c52ac940ebcea6d379e6d30e60a56c659f3ded3c8c6e867922a8169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:579b2972b0e521ddf3fc46e7ddbfb9b202662e4aea53dcee2060131fe850886f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variante61e7e0c6c52ac940ebcea6d379e6d30e60a56c659f3ded3c8c6e867922a8169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5edad01e-6ef1-1ba4-689d-a33149005463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physical_mean_integral {A : ℝ} (hA : 1 ≤ A) (t : ℝ)
    {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, actualPeriodicPhysicalCellProfile A t x) =
      actualRetainedMeanSourcePrimitive A t (Real.log b) -
        actualRetainedMeanSourcePrimitive A t (Real.log l) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hd (x : ℝ) (hx : x ∈ uIcc l b) :
      HasDerivAt (fun x => actualRetainedMeanSourcePrimitive A t (Real.log x))
        (actualPeriodicPhysicalCellProfile A t x) x := by
    have hh := (actualRetainedMeanSourcePrimitive_hasDerivAt (by linarith : 0 < A)
      t (Real.log x)).comp x (Real.hasDerivAt_log (hp x hx).ne')
    convert hh using 1 <;> try rfl
  have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
    (by linarith : 0 < A) hl b t).continuousOn
  rw [← uIcc_of_le hlb] at hc
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable

/-- The actual closed physical prefix row is genuinely L1, including its floor jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variante61e7e0c6c52ac940ebcea6d379e6d30e60a56c659f3ded3c8c6e867922a8169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variante61e7e0c6c52ac940ebcea6d379e6d30e60a56c659f3ded3c8c6e867922a8169.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed1e5b9df08736766efc1f8e21aa71100465b71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
