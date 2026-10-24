# singularPart_eq_zero_iff_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a5b4726-3b26-ac6f-f848-fddad69f26e4",
  "kind": "lemma",
  "lexical_name": "singularPart_eq_zero_iff_absolutelyContinuous",
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
  "slug": "singularpart-eq-zero-iff-absolutelycontinuous--495440f994174d2eed50315a",
  "source": {
    "blob": "475e0e93987e53420eef42296f73c0157d2bdcb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 423,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:495440f994174d2eed50315aebf87e85f5d75333ec46b6a9bf60f463d2155c9f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a5b4726-3b26-ac6f-f848-fddad69f26e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singularPart_eq_zero_iff_absolutelyContinuous (κ η : Kernel α γ)
    [IsFiniteKernel κ] [IsFiniteKernel η] (a : α) :
    singularPart κ η a = 0 ↔ κ a ≪ η a := by
  conv_rhs => rw [← rnDeriv_add_singularPart κ η, coe_add, Pi.add_apply]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [h, add_zero]
    exact withDensity_absolutelyContinuous _ _
  rw [Measure.AbsolutelyContinuous.add_left_iff] at h
  exact Measure.eq_zero_of_absolutelyContinuous_of_mutuallySingular h.2
    (mutuallySingular_singularPart _ _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant72152d07287e0c94c35e1ad3037a8093d1dc7c3c8afcbc8c9617f6fb74160aa2.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `475e0e93987e53420eef42296f73c0157d2bdcb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
