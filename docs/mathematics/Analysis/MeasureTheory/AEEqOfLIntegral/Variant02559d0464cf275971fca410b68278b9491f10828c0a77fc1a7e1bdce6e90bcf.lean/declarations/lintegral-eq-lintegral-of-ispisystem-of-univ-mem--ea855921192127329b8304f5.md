# lintegral_eq_lintegral_of_isPiSystem_of_univ_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:705d7f6a-e4b5-ab6d-dfc3-8daba13b5010",
  "kind": "lemma",
  "lexical_name": "lintegral_eq_lintegral_of_isPiSystem_of_univ_mem",
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
  "slug": "lintegral-eq-lintegral-of-ispisystem-of-univ-mem--ea855921192127329b8304f5",
  "source": {
    "blob": "6934d8b853b8fed6d63dcc9149696c84e9681bd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 207,
    "path": "GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea855921192127329b8304f5e318de11dde15f4ae44c39fb4641a8dbf3197fd6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:705d7f6a-e4b5-ab6d-dfc3-8daba13b5010`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_eq_lintegral_of_isPiSystem_of_univ_mem
    (h_eq : m0 = MeasurableSpace.generateFrom s) (h_inter : IsPiSystem s) (h_univ : Set.univ ∈ s)
    (basic : ∀ t ∈ s, ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ)
    (hf_int : ∫⁻ x, f x ∂μ ≠ ∞) {t : Set α} (ht : MeasurableSet t) :
    ∫⁻ x in t, f x ∂μ = ∫⁻ x in t, g x ∂μ := by
  refine lintegral_eq_lintegral_of_isPiSystem h_eq h_inter basic ?_ hf_int t ht
  rw [← setLIntegral_univ, ← setLIntegral_univ g]
  exact basic _ h_univ

/-- If two a.e.-measurable functions `α × β → ℝ≥0∞` with finite integrals have the same integral
on every rectangle, then they are almost everywhere equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEEqOfLIntegral/Variant02559d0464cf275971fca410b68278b9491f10828c0a77fc1a7e1bdce6e90bcf.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6934d8b853b8fed6d63dcc9149696c84e9681bd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
