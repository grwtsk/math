# transformPolynomial_ratio_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6f0322-d71a-a762-b1d1-fa8e8d92b09d",
  "kind": "theorem",
  "lexical_name": "transformPolynomial_ratio_tendsto",
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
  "slug": "transformpolynomial-ratio-tendsto--2bfc0147cb8731d3ae97f533",
  "source": {
    "blob": "a954437138f72c31669c930439068c48704e86b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bfc0147cb8731d3ae97f533ac8c2586771401373551e2e360bbdcc0fac613ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6f0322-d71a-a762-b1d1-fa8e8d92b09d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transformPolynomial_ratio_tendsto (z : ℂ) :
    Tendsto (fun A : ℝ => transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4)
      atTop (𝓝 (z^4)) := by
  have h1 : Tendsto (fun A : ℝ => (1 : ℂ)/(A : ℂ)) atTop (𝓝 0) := by
    have h := (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0)).ofReal
    simpa only [Complex.ofReal_inv,Complex.ofReal_zero,one_div] using h
  have h2 := h1.pow 2
  have h3 := h1.pow 3
  have h4 := h1.pow 4
  have hc : Tendsto (fun _ : ℝ => z^4) atTop (𝓝 (z^4)) := tendsto_const_nhds
  have ht := (((hc.sub (h1.const_mul (10*z^3))).add
    (h2.const_mul (45*z^2))).sub (h3.const_mul (105*z))).add (h4.const_mul 105)
  have he : (fun A : ℝ => transformPolynomial ((A : ℂ)*z)/(A : ℂ)^4) =ᶠ[atTop]
      (fun A : ℝ => z^4-(10*z^3)*(1/(A : ℂ))+
        (45*z^2)*(1/(A : ℂ))^2-(105*z)*(1/(A : ℂ))^3+105*(1/(A : ℂ))^4) := by
    filter_upwards [eventually_gt_atTop (0 : ℝ)] with A hA
    rw [transformPolynomial_ratio A hA.ne']
    ring
  apply Tendsto.congr' he.symm
  simpa using ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03/Variantb392fcbe900ed64653c15bff71b94a80a62af84f03951735fdc5da6978477597.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a954437138f72c31669c930439068c48704e86b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
