# actual_shortLog_error_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb631320-5147-1f6e-33d6-34fc5d882fb7",
  "kind": "theorem",
  "lexical_name": "actual_shortLog_error_tail",
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
  "slug": "actual-shortlog-error-tail--763d711cc0a6002ea8b4bc6a",
  "source": {
    "blob": "ceec9745ec0d1e4cd1e95a1599d2ce1db4a3117b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763d711cc0a6002ea8b4bc6a0d0b20973a8f99dca848ae3b98698cccb76501a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb631320-5147-1f6e-33d6-34fc5d882fb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_shortLog_error_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |shortLogSource A - shortLogMainTerm A (sourceLogSamplingMainTerm A)| ≤
      192 * tailEnergyCoefficient Q / A := by
  have hδ : 0 < tailEnergyCoefficient Q := tailEnergyCoefficient_pos Q
  have h := shortLog_error_le_of_sampling_error (hQ.trans hQA)
    (show 0 ≤ 96 * tailEnergyCoefficient Q by positivity)
    (sourceLogSamplingMainTerm A) (fun d hd ↦ by
      exact sourceMobiusKernel_sub_mainTerm_abs_le_tail hQ hQA
        (by exact_mod_cast (Finset.mem_Icc.mp hd).1))
  convert h using 1
  ring

/-- The doubly short Mangoldt inventory uses its sharper plain coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactSamplingTail/Variant2df19bf8e2997ddaf3811563154bd9fb9215a3ce753ecaa4488d4986a3a773e3.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceec9745ec0d1e4cd1e95a1599d2ce1db4a3117b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
