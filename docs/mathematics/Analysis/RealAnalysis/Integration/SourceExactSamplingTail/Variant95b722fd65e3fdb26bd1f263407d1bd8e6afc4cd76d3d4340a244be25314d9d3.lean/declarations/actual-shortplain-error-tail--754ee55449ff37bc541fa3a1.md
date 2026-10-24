# actual_shortPlain_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0e39fbf-4a91-ea14-1583-55aa447bd832",
  "kind": "theorem",
  "lexical_name": "actual_shortPlain_error_tail",
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
  "slug": "actual-shortplain-error-tail--754ee55449ff37bc541fa3a1",
  "source": {
    "blob": "1427fe7fc5d6d9366469b1ef1a4d5bd0225fb8cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 328,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant95b722fd65e3fdb26bd1f263407d1bd8e6afc4cd76d3d4340a244be25314d9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:754ee55449ff37bc541fa3a12194282ca91122c9e7eae38b4ab9e57be2329d86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant95b722fd65e3fdb26bd1f263407d1bd8e6afc4cd76d3d4340a244be25314d9d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0e39fbf-4a91-ea14-1583-55aa447bd832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shortPlain_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortPlainSource A - shortPlainMainTerm A (sourcePlainSamplingMainTerm A)| ≤
      64 * (Real.log 4 + 4) * tailEnergyCoefficient Q := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortPlain_error_uniform_le_of_sampling_error (hQ.trans hQA)
    (show 0 ≤ 16 * tailEnergyCoefficient Q by positivity)
    (sourcePlainSamplingMainTerm A) (fun d hd m hm ↦ by
      exact sourcePlainKernel_sub_mainTerm_abs_le_tail hQ hQA (by
        have hd1 : 1 ≤ d := (Finset.mem_Icc.mp hd).1
        have hm1 : 1 ≤ m := (Finset.mem_Icc.mp hm).1
        exact_mod_cast Nat.mul_le_mul hd1 hm1))
  convert h using 1 <;> ring

/-- Full original ledger cancellation precedes the improved tail budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant95b722fd65e3fdb26bd1f263407d1bd8e6afc4cd76d3d4340a244be25314d9d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant95b722fd65e3fdb26bd1f263407d1bd8e6afc4cd76d3d4340a244be25314d9d3.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1427fe7fc5d6d9366469b1ef1a4d5bd0225fb8cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
