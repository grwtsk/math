# smooth_kernel_literature_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a229f77-2212-ad8a-cb98-2f1ef27f387c",
  "kind": "theorem",
  "lexical_name": "smooth_kernel_literature_formula",
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
  "slug": "smooth-kernel-literature-formula--283d882bb892668387aef514",
  "source": {
    "blob": "b2bee702589464e4e889ce91b016cb7c2d31bee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantc80efb387372ee8449010d21424b2a4d436f5f9148456e51d0975472891888fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:283d882bb892668387aef514bc2480cb8e942e51528ebc10eee6c8ce4f72072b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantc80efb387372ee8449010d21424b2a4d436f5f9148456e51d0975472891888fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a229f77-2212-ad8a-cb98-2f1ef27f387c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smooth_kernel_literature_formula
    (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (hε1 : ε ≤ 1) :
    Summable (kernelPointTerm A ε hε) ∧
    (∑' p : ZeroPoint, kernelPointTerm A ε hε p) =
      Zeta23.EF.literatureRHS (smoothKernel A ε hε) := by
  have hadm := smooth_kernel_admission A ε hA hε hε1
  have h := weil_formula (smoothKernel A ε hε) hadm.1 hadm.2.1
  simpa only [kernelPointTerm, paperFT_smoothKernel] using h

end
end FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantc80efb387372ee8449010d21424b2a4d436f5f9148456e51d0975472891888fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Variantc80efb387372ee8449010d21424b2a4d436f5f9148456e51d0975472891888fb.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bee702589464e4e889ce91b016cb7c2d31bee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
