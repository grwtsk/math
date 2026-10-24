# lintegral_eq_lintegral_of_isPiSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:426f5233-0ed3-119a-3cbe-4d23d947fa08",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_lintegral_of_isPiSystem",
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
  "slug": "lintegral-eq-lintegral-of-ispisystem--7364597d457c32f538659ce1",
  "source": {
    "blob": "6934d8b853b8fed6d63dcc9149696c84e9681bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 187,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7364597d457c32f538659ce1a57d48ff572337ca385f2a3bb1d0ab7207d4d6a0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:426f5233-0ed3-119a-3cbe-4d23d947fa08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_lintegral_of_isPiSystem
    (h_eq : m0 = MeasurableSpace.generateFrom s) (h_inter : IsPiSystem s)
    (basic : ∀ t ∈ s, ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ)
    (h_univ : ∫⁻ x, f x ∂μ = ∫⁻ x, g x ∂μ) (hf_int : ∫⁻ x, f x ∂μ ≠ ∞) :
    ∀ t (_ : MeasurableSet t), ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ := by
  refine MeasurableSpace.induction_on_inter h_eq h_inter ?_ basic ?_ ?_
  · simp
  · intro t ht h_eq
    rw [setLIntegral_compl ht, setLIntegral_compl ht, h_eq, h_univ]
    · refine ne_of_lt ?_
      calc ∫⁻ x in t, g x ∂μ
      _ ≤ ∫⁻ x, g x ∂μ := setLIntegral_le_lintegral t _
      _ < ∞ := by rw [← h_univ]; exact hf_int.lt_top
    · refine ne_of_lt ?_
      calc ∫⁻ x in t, f x ∂μ
      _ ≤ ∫⁻ x, f x ∂μ := setLIntegral_le_lintegral t _
      _ < ∞ := hf_int.lt_top
  · intro t htd htm h
    simp_rw [lintegral_iUnion htm htd, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6934d8b853b8fed6d63dcc9149696c84e9681bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
