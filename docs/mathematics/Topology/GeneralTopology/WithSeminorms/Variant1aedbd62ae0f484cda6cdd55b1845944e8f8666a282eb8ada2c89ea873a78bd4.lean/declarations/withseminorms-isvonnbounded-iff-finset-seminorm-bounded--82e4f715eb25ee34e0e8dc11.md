# WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a02a56fa-ed29-1f5d-4633-780f4c968cf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ce17201-e579-af59-d9f7-bc0637796f4f",
  "kind": "theorem",
  "lexical_name": "WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded",
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
  "slug": "withseminorms-isvonnbounded-iff-finset-seminorm-bounded--82e4f715eb25ee34e0e8dc11",
  "source": {
    "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 512,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e4f715eb25ee34e0e8dc115d5ee96039255ff38f5cbd3ccc859dba0d90e119",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ce17201-e579-af59-d9f7-bc0637796f4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded {s : Set E} (hp : WithSeminorms p) :
    Bornology.IsVonNBounded 𝕜 s ↔ ∀ I : Finset ι, ∃ r > 0, ∀ x ∈ s, I.sup p x < r := by
  rw [hp.hasBasis.isVonNBounded_basis_iff]
  constructor
  · intro h I
    simp only [id.def] at h
    specialize h ((I.sup p).ball 0 1) (p.basisSets_mem I zero_lt_one)
    rcases h with ⟨r, hr, h⟩
    cases' NormedField.exists_lt_norm 𝕜 r with a ha
    specialize h a (le_of_lt ha)
    rw [Seminorm.smul_ball_zero (norm_pos_iff.1 <| hr.trans ha), mul_one] at h
    refine' ⟨‖a‖, lt_trans hr ha, _⟩
    intro x hx
    specialize h hx
    exact (Finset.sup I p).mem_ball_zero.mp h
  intro h s' hs'
  rcases p.basisSets_iff.mp hs' with ⟨I, r, hr, hs'⟩
  rw [id.def, hs']
  rcases h I with ⟨r', _, h'⟩
  simp_rw [← (I.sup p).mem_ball_zero] at h'
  refine' Absorbs.mono_right _ h'
  exact (Finset.sup I p).ball_zero_absorbs_ball_zero hr

set_option linter.uppercaseLean3 false in
#align with_seminorms.is_vonN_bounded_iff_finset_seminorm_bounded WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3f5a35a1d5bd7947227eeedaefe143d574e674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
