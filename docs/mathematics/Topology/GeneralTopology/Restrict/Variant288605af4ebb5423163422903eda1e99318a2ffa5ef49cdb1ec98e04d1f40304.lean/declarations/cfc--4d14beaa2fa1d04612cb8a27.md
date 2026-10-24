# cfc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8a9a3bf-9292-42f7-25d7-87a75a7e3f02",
  "kind": "theorem",
  "lexical_name": "cfc",
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
  "slug": "cfc--4d14beaa2fa1d04612cb8a27",
  "source": {
    "blob": "9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 298,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d14beaa2fa1d04612cb8a272ce03d006211d4422786e6b403b92f15af5ac059",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8a9a3bf-9292-42f7-25d7-87a75a7e3f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem cfc (f : C(S, R)) (halg : IsClosedEmbedding (algebraMap R S)) (h0 : p 0)
    (h : ∀ a, p a ↔ q a ∧ QuasispectrumRestricts a f) :
    NonUnitalContinuousFunctionalCalculus R A p where
  predicate_zero := h0
  compactSpace_quasispectrum a := by
    have := NonUnitalContinuousFunctionalCalculus.compactSpace_quasispectrum (R := S) a
    rw [← isCompact_iff_compactSpace] at this ⊢
    simpa using halg.isCompact_preimage this
  exists_cfc_of_predicate a ha := by
    refine ⟨((h a).mp ha).2.nonUnitalStarAlgHom (cfcₙHom ((h a).mp ha).1 (R := S)),
      ?hom_continuous, ?hom_injective, ?hom_id, ?hom_map_spectrum, ?predicate_hom⟩
    case hom_continuous => exact continuous_nonUnitalStarAlgHom (cfcₙHom_continuous _) _
    case hom_injective => exact nonUnitalStarAlgHom_injective (cfcₙHom_injective _) _ halg.injective
    case hom_id => exact ((h a).mp ha).2.nonUnitalStarAlgHom_id <| cfcₙHom_id ((h a).mp ha).1
    case hom_map_spectrum =>
      simp only [nonUnitalStarAlgHom_apply, ← @quasispectrum.preimage_algebraMap (R := R) S,
        cfcₙHom_map_quasispectrum, Set.ext_iff, Set.mem_preimage, Set.mem_range, comp_apply, coe_mk,
        ContinuousMap.coe_mk, StarAlgHom.ofId_apply, halg.injective.eq_iff]
      exact fun _ _ ↦ ((h a).mp ha).2.homeomorph.exists_congr fun b ↦ Iff.rfl
    case predicate_hom =>
      intro g
      rw [h]
      refine ⟨cfcₙHom_predicate _ _, ?_⟩
      refine { rightInvOn := fun s hs ↦ ?_, left_inv := ((h a).mp ha).2.left_inv }
      rw [nonUnitalStarAlgHom_apply,
        cfcₙHom_map_quasispectrum] at hs
      obtain ⟨r, rfl⟩ := hs
      simp [((h a).mp ha).2.left_inv _]

variable [NonUnitalContinuousFunctionalCalculus R A p]
variable [ContinuousMapZero.UniqueHom R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variant288605af4ebb5423163422903eda1e99318a2ffa5ef49cdb1ec98e04d1f40304.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da2ee207a860fff030dbfcbd2dcfb4c4d13a4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
