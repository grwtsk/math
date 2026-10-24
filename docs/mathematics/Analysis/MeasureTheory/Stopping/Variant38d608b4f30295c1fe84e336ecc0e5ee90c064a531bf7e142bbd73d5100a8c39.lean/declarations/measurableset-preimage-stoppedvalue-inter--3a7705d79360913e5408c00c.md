# measurableSet_preimage_stoppedValue_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b962d9b-cad8-1a15-862f-18b335c55021",
  "kind": "lemma",
  "lexical_name": "measurableSet_preimage_stoppedValue_inter",
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
  "slug": "measurableset-preimage-stoppedvalue-inter--3a7705d79360913e5408c00c",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1036,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7705d79360913e5408c00c019dd9627bac244d5333bd8522f0d74ede58b8d7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b962d9b-cad8-1a15-862f-18b335c55021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_preimage_stoppedValue_inter [PseudoMetrizableSpace β] [MeasurableSpace β]
    [BorelSpace β]
    (hf_prog : IsStronglyProgressive f u) (hτ : IsStoppingTime f τ)
    {t : Set β} (ht : MeasurableSet t) (i : ι) :
    MeasurableSet[f i] (stoppedValue u τ ⁻¹' t ∩ {ω | τ ω ≤ i}) := by
  have h_str_meas : ∀ i, StronglyMeasurable[f i] (stoppedValue u fun ω => min (τ ω) i) := fun i =>
    stronglyMeasurable_stoppedValue_of_le hf_prog (hτ.min_const i) fun _ => min_le_right _ _
  suffices stoppedValue u τ ⁻¹' t ∩ {ω : Ω | τ ω ≤ i} =
      (stoppedValue u fun ω => min (τ ω) i) ⁻¹' t ∩ {ω : Ω | τ ω ≤ i} by
    rw [this]; exact ((h_str_meas i).measurable ht).inter (hτ.measurableSet_le i)
  ext1 ω
  simp only [stoppedValue, Set.mem_inter_iff, Set.mem_preimage, Set.mem_ofPred_eq,
    and_congr_left_iff]
  intro h
  rw [min_eq_left h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
