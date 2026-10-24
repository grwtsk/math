# aestronglyMeasurable_derivWithin_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a656578e-7463-836b-770b-7ad1bf913784",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_derivWithin_Ioi",
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
  "slug": "aestronglymeasurable-derivwithin-ioi--a8fc5ba0a974030b4f9a7810",
  "source": {
    "blob": "b13390f0aee1019879e01d496581048f13b5488d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 776,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8fc5ba0a974030b4f9a7810b483df805cddc8616fede42a8604e688b957d5cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a656578e-7463-836b-770b-7ad1bf913784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_derivWithin_Ioi (μ : Measure ℝ) :
    AEStronglyMeasurable (fun x => derivWithin f (Ioi x) x) μ :=
  (stronglyMeasurable_derivWithin_Ioi f).aestronglyMeasurable

end RightDeriv

section WithParam

/- In this section, we prove the measurability of the derivative in a context with parameters:
given `f : α → E → F`, we want to show that `p ↦ fderiv 𝕜 (f p.1) p.2` is measurable. Contrary
to the previous sections, some assumptions are needed for this: if `f p.1` depends arbitrarily on
`p.1`, this is obviously false. We require that `f` is continuous and `E` is locally compact --
then the proofs in the previous sections adapt readily, as the set `A` defined above is open, so
that the differentiability set `D` is measurable. -/

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] [LocallyCompactSpace E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {α : Type*} [TopologicalSpace α]
  {f : α → E → F}

namespace FDerivMeasurableAux

open Uniformity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Measurable/Variantf0da8ee15844c80a230705220fd9f39f89b399b42fa1232c877c140c4ef21620.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13390f0aee1019879e01d496581048f13b5488d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
