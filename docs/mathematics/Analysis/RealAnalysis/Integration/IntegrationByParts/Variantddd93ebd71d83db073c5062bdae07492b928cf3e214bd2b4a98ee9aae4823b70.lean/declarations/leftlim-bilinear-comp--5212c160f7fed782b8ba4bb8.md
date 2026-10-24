# leftLim_bilinear_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5da5f22c-9475-b287-f1b9-b82e94f4808b",
  "kind": "lemma",
  "lexical_name": "leftLim_bilinear_comp",
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
  "slug": "leftlim-bilinear-comp--5212c160f7fed782b8ba4bb8",
  "source": {
    "blob": "762735ed2b332c5bec324032d308dad123239dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5212c160f7fed782b8ba4bb84a13a9c388a2ea54c1269c8c7442452701a6a70b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da5f22c-9475-b287-f1b9-b82e94f4808b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma leftLim_bilinear_comp
    {α : Type*} [LinearOrder α] [TopologicalSpace α] [OrderTopology α] {f : α → E} {g : α → F}
    (hf : BoundedVariationOn f univ) (hg : BoundedVariationOn g univ)
    (B : E →L[ℝ] F →L[ℝ] G) :
    (fun x ↦ B (f x) (g x)).leftLim = fun x ↦ B (f.leftLim x) (g.leftLim x) := by
  ext x
  rcases eq_or_neBot (𝓝[<] x) with hx | hx
  · simp [leftLim_eq_of_eq_bot _ hx]
  apply leftLim_eq_of_tendsto
  suffices H : Tendsto (fun x ↦ (f x, g x)) (𝓝[<] x) (𝓝 (f.leftLim x, g.leftLim x)) from
    (B.continuous₂.continuousAt (x := (f.leftLim x, g.leftLim x))).tendsto.comp H
  rw [nhds_prod_eq]
  exact Tendsto.prodMk (hf.tendsto_leftLim _) (hg.tendsto_leftLim _)

variable [DenselyOrdered α] [CompactIccSpace α]
  {f : α → E} {g : α → F} {B : E →L[ℝ] F →L[ℝ] G} {s : Set α} {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762735ed2b332c5bec324032d308dad123239dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
