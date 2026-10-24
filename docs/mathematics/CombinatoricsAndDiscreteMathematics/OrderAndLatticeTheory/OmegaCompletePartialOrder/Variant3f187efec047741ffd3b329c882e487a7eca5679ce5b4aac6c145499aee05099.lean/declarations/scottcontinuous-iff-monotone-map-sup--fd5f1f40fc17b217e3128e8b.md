# ωScottContinuous_iff_monotone_map_ωSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c4c75ea465d53d7ead2cd95ca428fec8176e865",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f187efec047741ffd3b329c882e487a7eca5679ce5b4aac6c145499aee05099.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a635fdf4-c65c-dd90-76ec-fe21d7ef1343",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc38a29b-f3b2-09ff-db8d-76ef004d2fc8",
  "kind": "lemma",
  "lexical_name": "ωScottContinuous_iff_monotone_map_ωSup",
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
  "slug": "scottcontinuous-iff-monotone-map-sup--fd5f1f40fc17b217e3128e8b",
  "source": {
    "blob": "5c4c75ea465d53d7ead2cd95ca428fec8176e865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant3f187efec047741ffd3b329c882e487a7eca5679ce5b4aac6c145499aee05099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd5f1f40fc17b217e3128e8b0acd248f21ae4f034ca0339e61632941359b458f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant3f187efec047741ffd3b329c882e487a7eca5679ce5b4aac6c145499aee05099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc38a29b-f3b2-09ff-db8d-76ef004d2fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ωScottContinuous_iff_monotone_map_ωSup :
    ωScottContinuous f ↔ ∃ hf : Monotone f, ∀ c : Chain α, f (ωSup c) = ωSup (c.map ⟨f, hf⟩) := by
  refine ⟨fun hf ↦ ⟨hf.monotone, hf.map_ωSup⟩, ?_⟩
  intro hf _ ⟨c, hc⟩ _ _ _ hda
  convert isLUB_range_ωSup (c.map { toFun := f, monotone' := hf.1 })
  · rw [map_coe, OrderHom.coe_mk, ← hc, ← (Set.range_comp f ⇑c)]
  · rw [← hc] at hda
    rw [← hf.2 c, ωSup_eq_of_isLUB hda]

alias ⟨ωScottContinuous.monotone_map_ωSup, ωScottContinuous.of_monotone_map_ωSup⟩ :=
  ωScottContinuous_iff_monotone_map_ωSup

/- A monotone function `f : α →o β` is ωScott continuous if and only if it distributes over ωSup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant3f187efec047741ffd3b329c882e487a7eca5679ce5b4aac6c145499aee05099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant3f187efec047741ffd3b329c882e487a7eca5679ce5b4aac6c145499aee05099.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4c75ea465d53d7ead2cd95ca428fec8176e865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
