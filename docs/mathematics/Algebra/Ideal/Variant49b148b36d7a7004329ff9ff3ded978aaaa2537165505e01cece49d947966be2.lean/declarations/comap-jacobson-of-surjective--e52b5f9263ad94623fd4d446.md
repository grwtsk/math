# comap_jacobson_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:747c8932-fff4-4f1b-08f6-6ff10742c96f",
  "kind": "theorem",
  "lexical_name": "comap_jacobson_of_surjective",
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
  "slug": "comap-jacobson-of-surjective--e52b5f9263ad94623fd4d446",
  "source": {
    "blob": "804c919e41f6f36a4864dcab95dfeba61fb19258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e52b5f9263ad94623fd4d4469487168f2fec1beedc49982374c5745ed83c997f",
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

Occurrence: `result:747c8932-fff4-4f1b-08f6-6ff10742c96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_jacobson_of_surjective {f : R →+* S} (hf : Function.Surjective f) {K : Ideal S} :
    comap f K.jacobson = (comap f K).jacobson := by
  unfold Ideal.jacobson
  refine le_antisymm ?_ ?_
  · rw [← top_inf_eq (sInf _), ← sInf_insert, comap_sInf', sInf_eq_iInf]
    refine iInf_le_iInf_of_subset fun J hJ => ?_
    have : comap f (map f J) = J :=
      Trans.trans (comap_map_of_surjective f hf J)
        (le_antisymm (sup_le_iff.2 ⟨le_of_eq rfl, le_trans (comap_mono bot_le) hJ.left⟩)
          le_sup_left)
    rcases map_eq_top_or_isMaximal_of_surjective _ hf hJ.right with htop | hmax
    · exact ⟨⊤, Set.mem_insert ⊤ _, htop ▸ this⟩
    · exact ⟨map f J, Set.mem_insert_of_mem _ ⟨le_map_of_comap_le_of_surjective f hf hJ.1, hmax⟩,
        this⟩
  · simp_rw [comap_sInf, le_iInf_iff]
    intros J hJ
    haveI : J.IsMaximal := hJ.right
    exact sInf_le ⟨comap_mono hJ.left, comap_isMaximal_of_surjective _ hf⟩

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804c919e41f6f36a4864dcab95dfeba61fb19258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
