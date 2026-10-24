# actualMangoldtErrorConvolution_one_pnt_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eabab52d-4ec9-04e4-8c80-4019a55d6da7",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorConvolution_one_pnt_majorant",
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
  "slug": "actualmangoldterrorconvolution-one-pnt-majorant--90147352314b47d12b97a112",
  "source": {
    "blob": "7536019fa1112ce3ed11de700b8eeabe968387fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variantfac2c2ed559eda80be1b755cb9a8f97cc930785e4d18c7f9875881d69b20d212.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90147352314b47d12b97a112e0a5194157f6e110d0a5c294d347350ff723346e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variantfac2c2ed559eda80be1b755cb9a8f97cc930785e4d18c7f9875881d69b20d212.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabab52d-4ec9-04e4-8c80-4019a55d6da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorConvolution_one_pnt_majorant :
    ∃ c > 0, ∃ C > 0, ∃ T : ℝ, 0 ≤ T ∧ ∀ s ≥ T,
      |actualMangoldtErrorConvolution 1 s| ≤
        C * Real.exp (-(c / 2) * s ^ ((1 : ℝ) / 10)) *
          (∫ u in Ioi (0 : ℝ), Real.exp (-(c / 2) * u ^ ((1 : ℝ) / 10))) +
            |Real.eulerMascheroniConstant + 1| * Real.exp (-s) := by
  obtain ⟨c, hc, hp⟩ := actualRelativePsiTimeError_isBigO
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound.bound
  refine ⟨c, hc, C, hC, max 0 T, le_max_left _ _, ?_⟩
  intro s hs
  apply actualMangoldtErrorConvolution_one_abs_le hc hC.le ((le_max_left _ _).trans hs)
  intro u hu
  simpa only [Real.norm_eq_abs, Real.abs_exp] using
    hT u ((le_max_right 0 T).trans (hs.trans hu))

end RH16ActualPntTailConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variantfac2c2ed559eda80be1b755cb9a8f97cc930785e4d18c7f9875881d69b20d212.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolution/Variantfac2c2ed559eda80be1b755cb9a8f97cc930785e4d18c7f9875881d69b20d212.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7536019fa1112ce3ed11de700b8eeabe968387fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
