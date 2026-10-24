# measurePreserving_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ae06c5-1254-323e-1324-3e9044878c82",
  "kind": "theorem",
  "lexical_name": "measurePreserving_pi",
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
  "slug": "measurepreserving-pi--fee1d5904c62d0c700dfe48f",
  "source": {
    "blob": "162b60fdc26deae210eb860d0eae58f1a6e4e9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 851,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee1d5904c62d0c700dfe48fb28e5529b45faf08dc3e76b8947328794f26a2d1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ae06c5-1254-323e-1324-3e9044878c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_pi {ι : Type*} [Fintype ι] {α : ι → Type v} {β : ι → Type*}
    [∀ i, MeasurableSpace (α i)] [∀ i, MeasurableSpace (β i)]
    (μ : (i : ι) → Measure (α i)) (ν : (i : ι) → Measure (β i))
    {f : (i : ι) → (α i) → (β i)} [∀ i, SigmaFinite (ν i)]
    (hf : ∀ i, MeasurePreserving (f i) (μ i) (ν i)) :
    MeasurePreserving (fun a i ↦ f i (a i)) (Measure.pi μ) (Measure.pi ν) where
  measurable :=
    measurable_pi_iff.mpr <| fun i ↦ (hf i).measurable.comp (measurable_pi_apply i)
  map_eq := by
    haveI : ∀ i, SigmaFinite (μ i) := fun i ↦ (hf i).sigmaFinite
    refine (Measure.pi_eq fun s hs ↦ ?_).symm
    rw [Measure.map_apply, Set.preimage_pi, Measure.pi_pi]
    · simp_rw [← MeasurePreserving.measure_preimage (hf _) (hs _).nullMeasurableSet]
    · exact measurable_pi_iff.mpr <| fun i ↦ (hf i).measurable.comp (measurable_pi_apply i)
    · exact MeasurableSet.univ_pi hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162b60fdc26deae210eb860d0eae58f1a6e4e9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
