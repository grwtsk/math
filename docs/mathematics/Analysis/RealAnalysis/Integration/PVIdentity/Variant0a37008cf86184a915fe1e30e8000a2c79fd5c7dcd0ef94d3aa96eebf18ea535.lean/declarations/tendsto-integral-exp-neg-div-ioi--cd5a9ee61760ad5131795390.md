# tendsto_integral_exp_neg_div_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fa6a8a7-bfd5-b27e-48ae-fd1545c8802c",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_exp_neg_div_Ioi",
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
  "slug": "tendsto-integral-exp-neg-div-ioi--cd5a9ee61760ad5131795390",
  "source": {
    "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5a9ee61760ad5131795390bed30443dbf91010a54279c81773612764b1353c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fa6a8a7-bfd5-b27e-48ae-fd1545c8802c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_exp_neg_div_Ioi :
    Tendsto (fun ε => ∫ t in (1:ℝ)..(1/ε), exp (-t) / t)
      (𝓝[>] (0 : ℝ)) (𝓝 (∫ t in Ioi (1:ℝ), exp (-t) / t)) := by
  -- The function $\frac{\exp(-t)}{t}$ is continuous on $[1, \infty)$ by the properties of the exponential and logarithm functions.
  simp [Real.exp_pos] at * ; have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => Real.exp (-t) / t) (Set.Ioi 1) := by
    exact integrableOn_exp_neg_div_Ioi;
  apply_rules [ MeasureTheory.intervalIntegral_tendsto_integral_Ioi ];
  norm_num [ Filter.Tendsto ]
/-
PROBLEM
∫_ε^y (exp(u)-1)/u du → ∫_0^y (exp(u)-1)/u du as ε → 0+
PROVIDED SOLUTION
Similar to tendsto_integral_one_sub_exp_neg_div. The function (exp(u)-1)/u is integrable on (0,y] (by integrableOn_exp_sub_one_div). The interval integral ∫_ε^y is continuous in ε, and as ε → 0+, converges to ∫_0^y. Use continuity of the antiderivative at the lower endpoint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
