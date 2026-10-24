# NonUnitalContinuousFunctionalCalculus.transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63807a46-0baa-2312-20ab-0689af7dc099",
  "kind": "theorem",
  "lexical_name": "NonUnitalContinuousFunctionalCalculus.transfer",
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
  "slug": "nonunitalcontinuousfunctionalcalculus-transfer--c613730fd4ab5e1c1bf25cbc",
  "source": {
    "blob": "e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c613730fd4ab5e1c1bf25cbc62b7f14c4244808b509a9c3031e7c7ee2095aa12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63807a46-0baa-2312-20ab-0689af7dc099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NonUnitalContinuousFunctionalCalculus.transfer (e : A ≃⋆ₐ[R] B)
    (he : Continuous e) (hpq : ∀ x, p x ↔ q (e x)) :
    NonUnitalContinuousFunctionalCalculus R B q where
  predicate_zero := map_zero e ▸ (hpq 0 |>.mp instCFC.predicate_zero)
  compactSpace_quasispectrum b := by
    rw [← isCompact_iff_compactSpace, ← e.apply_symm_apply b, AlgEquiv.quasispectrum_eq]
    exact isCompact_quasispectrum (e.symm b)
  exists_cfc_of_predicate b hb :=
    have ha : p (e.symm b) := by simpa [hpq]
    ⟨cfcₙHomTransfer e hpq b hb,
      continuous_cfcₙHomTransfer e hpq b hb he,
      cfcₙHomTransfer_injective e hpq b hb,
      cfcₙHomTransfer_id e hpq b hb,
      fun f ↦ by simp [cfcₙHom_map_quasispectrum ha, ContinuousMapZero.starAlgEquivPrecomp],
      fun f ↦ by simp [← hpq, cfcₙHom_predicate ha]⟩

@[deprecated (since := "2026-09-02")] alias NonUnitalContinuousFunctionCalculus.transfer :=
  NonUnitalContinuousFunctionalCalculus.transfer

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
