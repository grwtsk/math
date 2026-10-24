# inrX_nullHomotopy_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fe50e73-9ccd-2ae1-2c24-9795971b8ee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:147c52a6-e9ba-d07c-7b67-59a8c392e147",
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
  "slug": "inrx-nullhomotopy-f--b21ae0dc7b7a2539b8b88663",
  "source": {
    "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 479,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21ae0dc7b7a2539b8b88663489bb7f6757e9dc73eec40e274f46effb1e11dc0",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147c52a6-e9ba-d07c-7b67-59a8c392e147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–507.

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
    simp only [Homotopy.nullHomotopicMap'_f hij hjk,
      homotopyCofiber_X, homotopyCofiber_d, assoc, comp_add,
      homotopyCofiber.inrX_d_assoc, homotopyCofiber.inrX_sndX_assoc, comp_sub,
      inrX_π_assoc, comp_id, ← Hom.comm_assoc, homotopyCofiber.inlX_d _ _ _ _ _ hjk,
      comp_neg, add_neg_cancel_left]
    rw [← cancel_epi (biprodXIso K K j).inv]
    ext
    · simp [ι₀]
    · dsimp
      simp only [inr_biprodXIso_inv_assoc, biprod_inr_snd_f_assoc, comp_sub,
        biprod_inr_desc_f_assoc, id_f, id_comp, ι₀, comp_f, this,
        sub_f_apply, sub_comp, homotopyCofiber_X, homotopyCofiber.inr_f]
  · simp only [not_exists] at hj
    simp only [assoc, Homotopy.nullHomotopicMap'_f_of_not_rel_left hij hj, homotopyCofiber_X,
      homotopyCofiber_d, homotopyCofiber.inlX_d' _ _ _ _ (hj _), homotopyCofiber.inrX_sndX_assoc,
      comp_sub, inrX_π_assoc, comp_id, ι₀, comp_f, homotopyCofiber.inr_f]
    rw [← cancel_epi (biprodXIso K K j).inv]
    ext
    · simp
    · simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09675a4982fcb4365bd9b0114b0bcf328126d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
