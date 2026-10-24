# map_jacobson_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b60dcade-587b-4301-4f1c-4525072a3a20",
  "kind": "theorem",
  "lexical_name": "map_jacobson_of_surjective",
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
  "slug": "map-jacobson-of-surjective--f13a4ce7fadb7de30a5c20fd",
  "source": {
    "blob": "804c919e41f6f36a4864dcab95dfeba61fb19258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 184,
    "path": "GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13a4ce7fadb7de30a5c20fde604af03b7775ad4a8c5b22e9733394cf9a02486",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b60dcade-587b-4301-4f1c-4525072a3a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_jacobson_of_surjective {f : R →+* S} (hf : Function.Surjective f) :
    RingHom.ker f ≤ I → map f I.jacobson = (map f I).jacobson := by
  intro h
  unfold Ideal.jacobson
  -- Porting note: dot notation for `RingHom.ker` does not work
  have : ∀ J ∈ { J : Ideal R | I ≤ J ∧ J.IsMaximal }, RingHom.ker f ≤ J :=
    fun J hJ => le_trans h hJ.left
  refine Trans.trans (map_sInf hf this) (le_antisymm ?_ ?_)
  · refine
      sInf_le_sInf fun J hJ =>
        ⟨comap f J, ⟨⟨le_comap_of_map_le hJ.1, ?_⟩, map_comap_of_surjective f hf J⟩⟩
    haveI : J.IsMaximal := hJ.right
    exact comap_isMaximal_of_surjective f hf
  · refine sInf_le_sInf_of_subset_insert_top fun j hj => hj.recOn fun J hJ => ?_
    rw [← hJ.2]
    rcases map_eq_top_or_isMaximal_of_surjective f hf hJ.left.right with htop | hmax
    · exact htop.symm ▸ Set.mem_insert ⊤ _
    · exact Set.mem_insert_of_mem ⊤ ⟨map_mono hJ.1.1, hmax⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804c919e41f6f36a4864dcab95dfeba61fb19258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
