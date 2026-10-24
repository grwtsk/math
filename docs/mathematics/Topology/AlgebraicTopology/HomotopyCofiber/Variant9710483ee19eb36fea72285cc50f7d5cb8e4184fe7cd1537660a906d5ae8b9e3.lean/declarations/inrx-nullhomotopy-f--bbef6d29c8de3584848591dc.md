# inrX_nullHomotopy_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14c963e746778d71f0c87be08db807068f06e09a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a04007b2-18b2-23d7-0799-237bfa6f1779",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8066cc3d-db45-f965-3a20-da489d4b68d1",
  "kind": "lemma",
  "lexical_name": "inrX_nullHomotopy_f",
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
  "slug": "inrx-nullhomotopy-f--bbef6d29c8de3584848591dc",
  "source": {
    "blob": "14c963e746778d71f0c87be08db807068f06e09a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 650,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbef6d29c8de3584848591dc8f5dd9a942f8551747d32e574843ad2131b15e55",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8066cc3d-db45-f965-3a20-da489d4b68d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inrX_nullHomotopy_f (j : ι) :
    inrX K j ≫ (nullHomotopicMap K).f j = inrX K j ≫ (π K ≫ ι₀ K - 𝟙 _).f j := by
  have : biprod.lift (𝟙 K) (-𝟙 K) = biprod.inl - biprod.inr :=
    biprod.hom_ext _ _ (by simp) (by simp)
  obtain ⟨i, hij⟩ := hc j
  dsimp [nullHomotopicMap]
  by_cases hj : ∃ (k : ι), c.Rel j k
  · obtain ⟨k, hjk⟩ := hj
    simp only [Homotopy.nullHomotopicMap'_f hij hjk, homotopyCofiber_d, assoc, comp_add,
      homotopyCofiber.inrX_d_assoc, homotopyCofiber.inrX_sndX_assoc, comp_sub,
      inrX_π_assoc, comp_id, ← Hom.comm_assoc, homotopyCofiber.inlX_d _ _ _ _ _ hjk,
      comp_neg, add_neg_cancel_left]
    rw [← cancel_epi (biprodXIso K K j).inv]
    ext
    · simp [ι₀]
    · simp only [inr_biprodXIso_inv_assoc, biprod_inr_snd_f_assoc, comp_sub,
        biprod_inr_desc_f_assoc, id_f, id_comp, ι₀, comp_f, this,
        sub_f_apply, sub_comp, homotopyCofiber.inr_f]
  · simp only [not_exists] at hj
    simp only [assoc, Homotopy.nullHomotopicMap'_f_of_not_rel_left hij hj,
      homotopyCofiber_d, homotopyCofiber.inlX_d' _ _ _ _ (hj _), homotopyCofiber.inrX_sndX_assoc,
      comp_sub, inrX_π_assoc, comp_id, ι₀, comp_f, homotopyCofiber.inr_f]
    rw [← cancel_epi (biprodXIso K K j).inv]
    ext
    · simp
    · simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9710483ee19eb36fea72285cc50f7d5cb8e4184fe7cd1537660a906d5ae8b9e3.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c963e746778d71f0c87be08db807068f06e09a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
