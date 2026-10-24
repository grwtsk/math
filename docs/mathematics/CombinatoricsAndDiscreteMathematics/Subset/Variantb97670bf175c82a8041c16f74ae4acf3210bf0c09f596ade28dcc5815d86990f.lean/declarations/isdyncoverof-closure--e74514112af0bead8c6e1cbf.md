# IsDynCoverOf.closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7774041-6958-c0bf-b53f-1d6ad59a537f",
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
  "slug": "isdyncoverof-closure--e74514112af0bead8c6e1cbf",
  "source": {
    "blob": "74b9129e22dbfdf61d149520e0deff1a445fd393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e74514112af0bead8c6e1cbf275529166dfc8265537c840fcc222df3c5c5cb6e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7774041-6958-c0bf-b53f-1d6ad59a537f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subset/Variantb97670bf175c82a8041c16f74ae4acf3210bf0c09f596ade28dcc5815d86990f.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b9129e22dbfdf61d149520e0deff1a445fd393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
