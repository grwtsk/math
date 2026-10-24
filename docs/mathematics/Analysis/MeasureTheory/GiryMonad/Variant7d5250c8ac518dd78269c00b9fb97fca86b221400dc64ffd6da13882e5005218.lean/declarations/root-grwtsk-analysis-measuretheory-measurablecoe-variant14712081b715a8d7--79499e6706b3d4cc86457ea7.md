# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.Measurable.measure_of_isPiSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be5d9ac6-4d83-2a91-0e66-586afa8626a3",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.Measurable.measure_of_isPiSystem",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablecoe-variant14712081b715a8d7--79499e6706b3d4cc86457ea7",
  "source": {
    "blob": "11bc189ae7232a0216ce593fbb36ba426409d99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79499e6706b3d4cc86457ea7729c28c7404b91f662b13b541282a7066a8040bf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be5d9ac6-4d83-2a91-0e66-586afa8626a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCoe.Variant14712081b715a8d7eb0cc9a8d776f38fecf493020cdd553c6e1643e485d3984c.Measurable.measure_of_isPiSystem {μ : α → Measure β} [∀ a, IsFiniteMeasure (μ a)]
    {S : Set (Set β)} (hgen : ‹MeasurableSpace β› = .generateFrom S) (hpi : IsPiSystem S)
    (h_basic : ∀ s ∈ S, Measurable fun a ↦ μ a s) (h_univ : Measurable fun a ↦ μ a univ) :
    Measurable μ := by
  rw [measurable_measure]
  intro s hs
  induction s, hs using MeasurableSpace.induction_on_inter hgen hpi with
  | empty => simp
  | basic s hs => exact h_basic s hs
  | compl s hsm ihs =>
    simp only [measure_compl hsm (measure_ne_top _ _)]
    exact h_univ.sub ihs
  | iUnion f hfd hfm ihf =>
    simpa only [measure_iUnion hfd hfm] using .tsum ihf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant7d5250c8ac518dd78269c00b9fb97fca86b221400dc64ffd6da13882e5005218.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11bc189ae7232a0216ce593fbb36ba426409d99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
