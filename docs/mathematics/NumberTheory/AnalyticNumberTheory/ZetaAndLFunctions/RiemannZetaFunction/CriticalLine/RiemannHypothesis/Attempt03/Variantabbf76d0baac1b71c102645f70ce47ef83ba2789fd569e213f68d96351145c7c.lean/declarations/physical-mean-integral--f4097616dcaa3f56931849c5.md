# physical_mean_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:198a5a5c-6811-482e-6731-89e21f59d613",
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
  "slug": "physical-mean-integral--f4097616dcaa3f56931849c5",
  "source": {
    "blob": "81ceed6a29cb81a3f8697a013b6bf85d5f212453",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantabbf76d0baac1b71c102645f70ce47ef83ba2789fd569e213f68d96351145c7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4097616dcaa3f56931849c5568f400d9b23157ccf2fd160282e9283318bb5dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantabbf76d0baac1b71c102645f70ce47ef83ba2789fd569e213f68d96351145c7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:198a5a5c-6811-482e-6731-89e21f59d613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–90.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantabbf76d0baac1b71c102645f70ce47ef83ba2789fd569e213f68d96351145c7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variantabbf76d0baac1b71c102645f70ce47ef83ba2789fd569e213f68d96351145c7c.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ceed6a29cb81a3f8697a013b6bf85d5f212453` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
