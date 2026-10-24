# effectiveEpiFamily_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:044fed2f-8bde-eda8-2eae-842fc6258ddb",
  "kind": "theorem",
  "lexical_name": "effectiveEpiFamily_tfae",
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
  "slug": "effectiveepifamily-tfae--263be32a6f1ca57ba2369ce3",
  "source": {
    "blob": "810d6032f9b7d74750115cb6d2b303c2b64134b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 203,
    "path": "GRWTSK/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:263be32a6f1ca57ba2369ce32867058d9a59163ad0805e792fe71b2a1a5a7abc",
  "verification": {
    "reference": "docs/verification/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:044fed2f-8bde-eda8-2eae-842fc6258ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpiFamily_tfae {α : Type} [Fintype α] {B : Stonean}
    (X : α → Stonean) (π : (a : α) → (X a ⟶ B)) :
    TFAE [
      EffectiveEpiFamily X π,
      Epi (Limits.Sigma.desc π),
      ∀ (b : B), ∃ (a : α) (x : X a), π a x = b ] := by
  tfae_have 1 → 2
  · intro
    infer_instance
  tfae_have 1 → 2
  · intro
    infer_instance
  tfae_have 2 → 3
  · intro e
    rw [epi_iff_surjective] at e
    intro b
    obtain ⟨t, rfl⟩ := e b
    let q := (coproductIsoCoproduct X).inv t
    refine ⟨q.1, q.2, ?_⟩
    rw [← (coproductIsoCoproduct X).inv_hom_id_apply t]
    show _ = ((coproductIsoCoproduct X).hom ≫ Sigma.desc π) ((coproductIsoCoproduct X).inv t)
    suffices : (coproductIsoCoproduct X).hom ≫ Sigma.desc π = finiteCoproduct.desc X π
    · rw [this]
      rfl
    apply Eq.symm
    rw [← Iso.inv_comp_eq]
    apply colimit.hom_ext
    rintro ⟨a⟩
    simp only [Discrete.functor_obj, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app,
      coproductIsoCoproduct, colimit.comp_coconePointUniqueUpToIso_inv_assoc]
    ext
    rfl
  tfae_have 3 → 1
  · apply effectiveEpiFamily_of_jointly_surjective
  tfae_finish

end JointlySurjective

section Coherent

open CompHaus Functor

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/EffectiveEpi/Variant53e2fa84f9c1f6982297e437a678b65a543fcda1bf7897f84d755f0c1925d766.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810d6032f9b7d74750115cb6d2b303c2b64134b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
