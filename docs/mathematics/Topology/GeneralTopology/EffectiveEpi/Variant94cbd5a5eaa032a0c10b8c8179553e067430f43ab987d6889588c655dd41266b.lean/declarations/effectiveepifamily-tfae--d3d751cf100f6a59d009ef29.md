# effectiveEpiFamily_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41c3b0ac7417612a2c302f773c4053ea7b95fd44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28024b1c-1bd4-b8a4-c8eb-8fbb255cab87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a65fe133-a203-33f8-e312-64d0c3b7369a",
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
  "slug": "effectiveepifamily-tfae--d3d751cf100f6a59d009ef29",
  "source": {
    "blob": "41c3b0ac7417612a2c302f773c4053ea7b95fd44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3d751cf100f6a59d009ef29b2e827018da33eddb854052d136b50c4a20b708c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a65fe133-a203-33f8-e312-64d0c3b7369a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpiFamily_tfae {α : Type} [Fintype α] {B : Profinite}
    (X : α → Profinite) (π : (a : α) → (X a ⟶ B)) :
    TFAE [
      EffectiveEpiFamily X π,
      Epi (Limits.Sigma.desc π),
      ∀ (b : B), ∃ (a : α) (x : X a), π a x = b ] := by
  tfae_have 1 → 2
  · intro
    infer_instance
  tfae_have 2 → 3
  · intro e
    rw [epi_iff_surjective] at e
    let i : ∐ X ≅ finiteCoproduct X :=
      (colimit.isColimit _).coconePointUniqueUpToIso (finiteCoproduct.isColimit _)
    intro b
    obtain ⟨t, rfl⟩ := e b
    let q := i.hom t
    refine ⟨q.1, q.2, ?_⟩
    have : t = i.inv (i.hom t)
    · show t = (i.hom ≫ i.inv) t
      simp only [i.hom_inv_id]
      rfl
    rw [this]
    show _ = (i.inv ≫ Sigma.desc π) (i.hom t)
    suffices : i.inv ≫ Sigma.desc π = finiteCoproduct.desc X π
    · rw [this]
      rfl
    rw [Iso.inv_comp_eq]
    apply colimit.hom_ext
    rintro ⟨a⟩
    simp only [Discrete.functor_obj, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app,
      colimit.comp_coconePointUniqueUpToIso_hom_assoc]
    ext
    rfl
  tfae_have 3 → 1
  · apply effectiveEpiFamily_of_jointly_surjective
  tfae_finish

end JointlySurjective

section Coherent

/-- The category of profinite spaces is precoherent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant94cbd5a5eaa032a0c10b8c8179553e067430f43ab987d6889588c655dd41266b.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41c3b0ac7417612a2c302f773c4053ea7b95fd44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
