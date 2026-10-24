# pi_map_piOptionEquivProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fecdeb4a-4b4d-28af-a299-b322f967f1d8",
  "kind": "lemma",
  "lexical_name": "pi_map_piOptionEquivProd",
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
  "slug": "pi-map-pioptionequivprod--eaab518c4d4e18eb9609aa60",
  "source": {
    "blob": "162b60fdc26deae210eb860d0eae58f1a6e4e9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 425,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaab518c4d4e18eb9609aa6064fb725c9ed5ae648b009ae4e21c520ab084b6cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fecdeb4a-4b4d-28af-a299-b322f967f1d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pi_map_piOptionEquivProd {β : Option ι → Type*} [∀ i, MeasurableSpace (β i)]
    (μ : (i : Option ι) → Measure (β i)) [∀ (i : Option ι), SigmaFinite (μ i)] :
    ((Measure.pi fun i ↦ μ (some i)).prod (μ none)).map
      (MeasurableEquiv.piOptionEquivProd β).symm = Measure.pi μ := by
  refine pi_eq (fun s _ ↦ ?_) |>.symm
  let e_meas : ((i : ι) → β (some i)) × β none ≃ᵐ ((i : Option ι) → β i) :=
    MeasurableEquiv.piOptionEquivProd β |>.symm
  have me := MeasurableEquiv.measurableEmbedding e_meas
  have : e_meas ⁻¹' pi univ s = (pi univ (fun i ↦ s (some i))) ×ˢ (s none) := by
    ext x
    simp only [mem_preimage, Set.mem_pi, mem_univ, forall_true_left, mem_prod]
    refine ⟨by tauto, fun _ i ↦ ?_⟩
    rcases i <;> tauto
  simp only [e_meas, me.map_apply, univ_option, le_eq_subset, Finset.prod_insertNone, this,
    prod_prod, pi_pi, mul_comm]

section Intervals

variable [∀ i, PartialOrder (α i)] [∀ i, NoAtoms (μ i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162b60fdc26deae210eb860d0eae58f1a6e4e9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
