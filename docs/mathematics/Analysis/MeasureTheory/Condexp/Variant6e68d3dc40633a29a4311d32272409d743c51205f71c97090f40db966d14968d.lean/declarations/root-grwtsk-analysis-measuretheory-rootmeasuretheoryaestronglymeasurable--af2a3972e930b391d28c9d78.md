# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0cf717a-176c-ad27-54cc-1768fad9f68c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--af2a3972e930b391d28c9d78",
  "source": {
    "blob": "22b2fba4bd6999892b15237d35d702bae0c7935d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af2a3972e930b391d28c9d7835d364c11534652eaf0633cf4f7d39d977e00045",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0cf717a-176c-ad27-54cc-1768fad9f68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id [TopologicalSpace F]
    (hm : m ≤ mΩ) (hf : AEStronglyMeasurable f μ) : AEStronglyMeasurable (fun x : Ω × Ω => f x.2)
      (@Measure.map Ω (Ω × Ω) (m.prod mΩ) mΩ (fun ω => (id ω, id ω)) μ) := by
  rw [← aestronglyMeasurable_comp_snd_map_prod_mk_iff (measurable_id'' hm)] at hf
  simp_rw [id.def] at hf ⊢
  exact hf
#align measure_theory.ae_strongly_measurable.comp_snd_map_prod_id MeasureTheory.AEStronglyMeasurable.comp_snd_map_prod_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant6e68d3dc40633a29a4311d32272409d743c51205f71c97090f40db966d14968d.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b2fba4bd6999892b15237d35d702bae0c7935d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
