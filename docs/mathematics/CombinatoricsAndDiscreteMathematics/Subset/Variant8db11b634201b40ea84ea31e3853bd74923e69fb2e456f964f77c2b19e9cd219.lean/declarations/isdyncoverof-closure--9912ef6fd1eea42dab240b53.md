# IsDynCoverOf.closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19aea1838d5c8adcc90547d5558029a707e11821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1de92d4d-d5ce-d911-cb23-21dca798c9e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a6febf8-cec7-dff4-571b-1f3f4a3acf92",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.closure",
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
  "slug": "isdyncoverof-closure--9912ef6fd1eea42dab240b53",
  "source": {
    "blob": "19aea1838d5c8adcc90547d5558029a707e11821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9912ef6fd1eea42dab240b53dd7f2d794b1fe513187f4f4c9babbad62433fe1a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a6febf8-cec7-dff4-571b-1f3f4a3acf92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.closure (h : Continuous T) {F : Set X} {U V : Set (X × X)}
    (V_uni : V ∈ 𝓤 X) {n : ℕ} {s : Set X} (s_cover : IsDynCoverOf T F U n s) :
    IsDynCoverOf T (closure F) (U ○ V) n s := by
  rcases (hasBasis_symmetric.mem_iff' V).1 V_uni with ⟨W, ⟨W_uni, W_symm⟩, W_V⟩
  refine IsDynCoverOf.of_entourage_subset (compRel_mono (refl U) W_V) fun x x_clos ↦ ?_
  obtain ⟨y, y_x, y_F⟩ := mem_closure_iff_nhds.1 x_clos _ (ball_dynEntourage_mem_nhds h W_uni n x)
  obtain ⟨z, z_s, y_z⟩ := mem_iUnion₂.1 (s_cover y_F)
  refine mem_iUnion₂.2 ⟨z, z_s, ?_⟩
  rw [mem_ball_symmetry (W_symm.dynEntourage T n)] at y_x
  exact ball_mono (dynEntourage_comp_subset T U W n) z (mem_ball_comp y_z y_x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variant8db11b634201b40ea84ea31e3853bd74923e69fb2e456f964f77c2b19e9cd219.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19aea1838d5c8adcc90547d5558029a707e11821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
