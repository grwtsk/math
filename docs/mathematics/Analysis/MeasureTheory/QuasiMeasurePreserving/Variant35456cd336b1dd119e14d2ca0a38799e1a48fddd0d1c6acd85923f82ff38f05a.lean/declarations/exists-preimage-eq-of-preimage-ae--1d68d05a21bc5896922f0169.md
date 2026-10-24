# exists_preimage_eq_of_preimage_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a259da60cfd673ead019b27328abc37da6a160f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:498a30bd-ac39-6be1-4d4b-d65860c5a799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd4b4868-a273-f029-ec80-47be2ad74c24",
  "kind": "theorem",
  "lexical_name": "exists_preimage_eq_of_preimage_ae",
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
  "slug": "exists-preimage-eq-of-preimage-ae--1d68d05a21bc5896922f0169",
  "source": {
    "blob": "7a259da60cfd673ead019b27328abc37da6a160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d68d05a21bc5896922f016944ed09daf2bdddfd5b673821c40b6d320217cae4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd4b4868-a273-f029-ec80-47be2ad74c24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_preimage_eq_of_preimage_ae {f : α → α} (h : QuasiMeasurePreserving f μ μ)
    (hs : NullMeasurableSet s μ) (hs' : f ⁻¹' s =ᵐ[μ] s) :
    ∃ t : Set α, MeasurableSet t ∧ t =ᵐ[μ] s ∧ f ⁻¹' t = t := by
  obtain ⟨t, htm, ht⟩ := hs
  refine ⟨limsup (f^[·] ⁻¹' t) atTop, ?_, ?_, ?_⟩
  · exact .measurableSet_limsup fun n ↦ h.measurable.iterate n htm
  · have : f ⁻¹' t =ᵐ[μ] t := (h.preimage_ae_eq ht.symm).trans (hs'.trans ht)
    exact limsup_ae_eq_of_forall_ae_eq _ fun n ↦ .trans (h.preimage_iterate_ae_eq _ this) ht.symm
  · simp only [Set.preimage_iterate_eq]
    exact CompleteLatticeHom.apply_limsup_iterate (CompleteLatticeHom.setPreimage f) t

open Pointwise

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant35456cd336b1dd119e14d2ca0a38799e1a48fddd0d1c6acd85923f82ff38f05a.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a259da60cfd673ead019b27328abc37da6a160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
