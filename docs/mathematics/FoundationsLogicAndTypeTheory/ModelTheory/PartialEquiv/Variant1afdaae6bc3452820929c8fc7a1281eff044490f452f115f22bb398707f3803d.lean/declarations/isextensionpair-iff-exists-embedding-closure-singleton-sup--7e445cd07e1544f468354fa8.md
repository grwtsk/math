# isExtensionPair_iff_exists_embedding_closure_singleton_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fedf617b598a6b3213f983fd2544427d9fe6ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86301356-b3a8-44b8-616f-f4090fbc73ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05d8c8e9-eec8-e173-de88-7de495be2eb7",
  "kind": "theorem",
  "lexical_name": "isExtensionPair_iff_exists_embedding_closure_singleton_sup",
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
  "slug": "isextensionpair-iff-exists-embedding-closure-singleton-sup--7e445cd07e1544f468354fa8",
  "source": {
    "blob": "4fedf617b598a6b3213f983fd2544427d9fe6ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e445cd07e1544f468354fa8d26597e52a45ff1d7f81adff5a7d95d464371087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d8c8e9-eec8-e173-de88-7de495be2eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtensionPair_iff_exists_embedding_closure_singleton_sup :
    L.IsExtensionPair M N ↔
    ∀ (S : L.Substructure M) (_ : S.FG) (f : S ↪[L] N) (m : M),
      ∃ g : (closure L {m} ⊔ S : L.Substructure M) ↪[L] N, f =
        g.comp (Substructure.inclusion le_sup_right) := by
  refine ⟨fun h S S_FG f m => ?_, fun h ⟨f, f_FG⟩ m => ?_⟩
  · obtain ⟨⟨f', hf'⟩, mf', ff'1, ff'2⟩ := h ⟨⟨S, _, f.equivRange⟩, S_FG⟩ m
    refine ⟨f'.toEmbedding.comp (Substructure.inclusion ?_), ?_⟩
    · simp only [sup_le_iff, ff'1, closure_le, singleton_subset_iff, SetLike.mem_coe, mf',
        and_self]
    · ext ⟨x, hx⟩
      rw [Embedding.subtype_equivRange] at ff'2
      simp only [← ff'2, Embedding.comp_apply, Substructure.coe_inclusion, inclusion_mk,
        Equiv.coe_toEmbedding, coe_subtype, PartialEquiv.toEmbedding_apply]
  · obtain ⟨f', eq_f'⟩ := h f.dom f_FG f.toEmbedding m
    refine ⟨⟨⟨closure L {m} ⊔ f.dom, f'.toHom.range, f'.equivRange⟩,
      (fg_closure_singleton _).sup f_FG⟩,
      subset_closure.trans (le_sup_left : (closure L) {m} ≤ _) (mem_singleton m),
      ⟨le_sup_right, Embedding.ext (fun _ => ?_)⟩⟩
    rw [PartialEquiv.toEmbedding] at eq_f'
    simp only [Embedding.comp_apply, Substructure.coe_inclusion, Equiv.coe_toEmbedding, coe_subtype,
      Embedding.equivRange_apply, eq_f']

namespace IsExtensionPair

protected alias ⟨cod, _⟩ := isExtensionPair_iff_cod

/-- The cofinal set of finite equivalences with a given element in their domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fedf617b598a6b3213f983fd2544427d9fe6ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
