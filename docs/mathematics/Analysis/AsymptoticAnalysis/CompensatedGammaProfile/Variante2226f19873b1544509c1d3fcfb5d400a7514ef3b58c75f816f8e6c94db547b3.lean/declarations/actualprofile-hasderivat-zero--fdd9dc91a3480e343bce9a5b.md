# actualProfile_hasDerivAt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:749b3c5f-e75c-f6cf-845e-fcceb8f8d9d6",
  "kind": "theorem",
  "lexical_name": "actualProfile_hasDerivAt_zero",
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
  "slug": "actualprofile-hasderivat-zero--fdd9dc91a3480e343bce9a5b",
  "source": {
    "blob": "c5402ce95bc5664fdae8f1ab183b237f3de49f56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 283,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdd9dc91a3480e343bce9a5b0e2ccdeeb1629bc49c987a5970c22c78234d59f1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:749b3c5f-e75c-f6cf-845e-fcceb8f8d9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_hasDerivAt_zero : HasDerivAt actualProfile 0 0 := by
  have ha : HasDerivAt (fun x : ℝ ↦ 1 + x / 2) (1 / 2) 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).div_const 2).const_add 1
  have hg : HasDerivAt (fun x : ℝ ↦ Real.Gamma (1 + x / 2))
      (-Real.eulerMascheroniConstant / 2) 0 := by
    have hG : HasDerivAt Real.Gamma (-Real.eulerMascheroniConstant) (1 + (0 : ℝ) / 2) := by
      simpa using Real.hasDerivAt_Gamma_one
    convert hG.comp 0 ha using 1 <;> first | rfl | ring
  have hl := hg.log (by simp [Real.Gamma_one])
  have he := ((hasDerivAt_id (0 : ℝ)).const_mul Real.eulerMascheroniConstant).div_const 2
  convert hl.add he using 1 <;> first | rfl | simp [Real.Gamma_one, neg_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variante2226f19873b1544509c1d3fcfb5d400a7514ef3b58c75f816f8e6c94db547b3.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5402ce95bc5664fdae8f1ab183b237f3de49f56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
