# shiftedPsiSecondPrimitive_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a1d00f8-7645-adc6-1985-e14e19ac746b",
  "kind": "theorem",
  "lexical_name": "shiftedPsiSecondPrimitive_intervalIntegrable",
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
  "slug": "shiftedpsisecondprimitive-intervalintegrable--86d603998641aa8fd72ebf0a",
  "source": {
    "blob": "1178d01d54b20f231149c4718350dd2323bcb626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d603998641aa8fd72ebf0a643a76bc95423062d1553d653ce5894020c8a235",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a1d00f8-7645-adc6-1985-e14e19ac746b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedPsiSecondPrimitive_intervalIntegrable (t : ℝ) (ht : Real.log 2 ≤ t) :
    IntervalIntegrable (fun y =>
      shiftedActualChebyshev y * (t - Real.log y + 4) / y ^ (3 / 2 : ℝ))
      volume 2 (Real.exp t) := by
  have hX : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht
  have hf : ContinuousOn (fun y : ℝ => (t - Real.log y + 4) / y ^ (3 / 2 : ℝ))
      (Icc 2 (Real.exp t)) := by
    intro y hy
    have hypos : 0 < y := by linarith [hy.1]
    exact ((continuousAt_const.sub (Real.continuousAt_log hypos.ne')).add
      continuousAt_const |>.div (continuousAt_id.rpow_const (Or.inl hypos.ne'))
        (Real.rpow_pos_of_pos hypos _).ne').continuousWithinAt
  simpa only [mul_div_assoc] using
    shiftedActualChebyshev_mul_intervalIntegrable (Real.exp t) hX _ hf

/-- Exact full signed primitive reconstruction after inverse-square Abel integration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquare/Varianta59816a4b723e0b845538b8cdd287729bbb8faf2f97c3945a45d8806970035bf.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178d01d54b20f231149c4718350dd2323bcb626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
