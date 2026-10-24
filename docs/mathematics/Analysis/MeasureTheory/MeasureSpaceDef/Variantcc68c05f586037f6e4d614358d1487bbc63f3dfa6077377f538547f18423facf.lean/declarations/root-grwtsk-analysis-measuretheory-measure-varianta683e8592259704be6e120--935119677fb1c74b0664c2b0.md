# _root_.GRWTSK.Analysis.MeasureTheory.Measure.Varianta683e8592259704be6e120fc24fbb4f87f30d99ca54ff4ea82158d01bf47c280.MeasurableSpace.ae_induction_on_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc2c2f7b-9b17-64cf-1ec7-93ec3632f8ae",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.Measure.Varianta683e8592259704be6e120fc24fbb4f87f30d99ca54ff4ea82158d01bf47c280.MeasurableSpace.ae_induction_on_inter",
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
  "slug": "root-grwtsk-analysis-measuretheory-measure-varianta683e8592259704be6e120--935119677fb1c74b0664c2b0",
  "source": {
    "blob": "8a4607dc15e429f7164e9a82008c2baf375c582e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 290,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:935119677fb1c74b0664c2b005c6cdeb071f122e5eff46a46e796f399f6a3607",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2c2f7b-9b17-64cf-1ec7-93ec3632f8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.Measure.Varianta683e8592259704be6e120fc24fbb4f87f30d99ca54ff4ea82158d01bf47c280.MeasurableSpace.ae_induction_on_inter
    {α β : Type*} [MeasurableSpace β] {μ : Measure β}
    {C : β → Set α → Prop} {s : Set (Set α)} [m : MeasurableSpace α]
    (h_eq : m = MeasurableSpace.generateFrom s)
    (h_inter : IsPiSystem s) (h_empty : ∀ᵐ x ∂μ, C x ∅) (h_basic : ∀ᵐ x ∂μ, ∀ t ∈ s, C x t)
    (h_compl : ∀ᵐ x ∂μ, ∀ t, MeasurableSet t → C x t → C x tᶜ)
    (h_union : ∀ᵐ x ∂μ, ∀ f : ℕ → Set α,
        Pairwise (Disjoint on f) → (∀ i, MeasurableSet (f i)) → (∀ i, C x (f i)) → C x (⋃ i, f i)) :
    ∀ᵐ x ∂μ, ∀ ⦃t⦄, MeasurableSet t → C x t := by
  filter_upwards [h_empty, h_basic, h_compl, h_union] with x hx_empty hx_basic hx_compl hx_union
    using MeasurableSpace.induction_on_inter (C := fun t _ ↦ C x t)
      h_eq h_inter hx_empty hx_basic hx_compl hx_union

end ae

open Classical in
/-- A measurable set `t ⊇ s` such that `μ t = μ s`. It even satisfies `μ (t ∩ u) = μ (s ∩ u)` for
any measurable set `u` if `μ s ≠ ∞`, see `measure_toMeasurable_inter`.
(This property holds without the assumption `μ s ≠ ∞` when the space is s-finite -- for example
σ-finite), see `measure_toMeasurable_inter_of_sFinite`).
If `s` is a null measurable set, then
we also have `t =ᵐ[μ] s`, see `NullMeasurableSet.toMeasurable_ae_eq`.
This notion is sometimes called a "measurable hull" in the literature. -/
irreducible_def toMeasurable (μ : Measure α) (s : Set α) : Set α :=
  if h : ∃ t, t ⊇ s ∧ MeasurableSet t ∧ t =ᵐ[μ] s then h.choose else
    if h' : ∃ t, t ⊇ s ∧ MeasurableSet t ∧
      ∀ u, MeasurableSet u → μ (t ∩ u) = μ (s ∩ u) then h'.choose
    else (exists_measurable_superset μ s).choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4607dc15e429f7164e9a82008c2baf375c582e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
