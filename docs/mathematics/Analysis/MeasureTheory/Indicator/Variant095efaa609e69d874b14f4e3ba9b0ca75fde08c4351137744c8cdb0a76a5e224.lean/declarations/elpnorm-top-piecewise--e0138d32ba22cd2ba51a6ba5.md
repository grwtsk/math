# eLpNorm_top_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:390d1a01-a429-5c43-aab2-2294fab41405",
  "kind": "lemma",
  "lexical_name": "eLpNorm_top_piecewise",
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
  "slug": "elpnorm-top-piecewise--e0138d32ba22cd2ba51a6ba5",
  "source": {
    "blob": "80d15ec912ab377c581f26725b6c103050a031e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0138d32ba22cd2ba51a6ba5221c28924b8bef5c2b303475a5da5b23590d99b4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:390d1a01-a429-5c43-aab2-2294fab41405`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eLpNorm_top_piecewise (f g : α → ε) [DecidablePred (· ∈ s)] (hs : MeasurableSet s) :
    eLpNorm (Set.piecewise s f g) ∞ μ
      = max (eLpNorm f ∞ (μ.restrict s)) (eLpNorm g ∞ (μ.restrict sᶜ)) := by
  by_cases hfg : AEStronglyMeasurable (Set.piecewise s f g) μ
  · obtain ⟨hf, hg⟩ := (AEStronglyMeasurable.piecewise_iff hs).1 hfg
    rw [eLpNorm_exponent_top hfg, eLpNorm_exponent_top hf,
      eLpNorm_exponent_top hg]
    exact eLpNormEssSup_piecewise f g hs
  · have h := hfg
    simp only [AEStronglyMeasurable.piecewise_iff hs] at h
    grind [eLpNorm_of_not_aestronglyMeasurable]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Indicator/Variant095efaa609e69d874b14f4e3ba9b0ca75fde08c4351137744c8cdb0a76a5e224.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d15ec912ab377c581f26725b6c103050a031e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
