# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1fe1cfe9e691ebe49b2f377ef42419fa34ce5323428c762a428f2d4af99812d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ead67fa34bf7a32684e7a5ba",
  "source": {
    "blob": "7abce701f315e6c1c9ac420d215a36bc7321dab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variant1def843912cdbbd3d76c2b3e21c43b9ddd4091e470c1481fa5f17094e389b25d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ead67fa34bf7a32684e7a5ba2712326eeed1c464b963647276f26e4640a2a7a1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variant1def843912cdbbd3d76c2b3e21c43b9ddd4091e470c1481fa5f17094e389b25d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1fe1cfe9e691ebe49b2f377ef42419fa34ce5323428c762a428f2d4af99812d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [μ.IsMulRightInvariant] : ErgodicSMul Gᵐᵒᵖ G μ := by
  refine ⟨fun {s} hsm hs ↦ ?_⟩
  suffices (∃ᵐ x ∂μ, x ∈ s) → ∀ᵐ x ∂μ, x ∈ s by
    simp only [eventuallyConst_set, ← not_frequently]
    exact or_not_of_imp this
  intro hμs
  obtain ⟨a, has, ha⟩ : ∃ a ∈ s, ∀ᵐ b ∂μ, (a * b ∈ s ↔ a ∈ s) := by
    refine (hμs.and_eventually ?_).exists
    rw [ae_ae_comm]
    · exact ae_of_all _ fun b ↦ (hs ⟨b⟩).mem_iff
    · exact ((hsm.preimage <| measurable_fst.mul measurable_snd).mem.iff
        (hsm.preimage measurable_fst).mem).setOf
  simpa [has] using (quasiMeasurePreserving_mul_left μ a⁻¹).ae ha
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variant1def843912cdbbd3d76c2b3e21c43b9ddd4091e470c1481fa5f17094e389b25d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variant1def843912cdbbd3d76c2b3e21c43b9ddd4091e470c1481fa5f17094e389b25d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abce701f315e6c1c9ac420d215a36bc7321dab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
