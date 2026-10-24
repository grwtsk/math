# to_skyscraper_fromStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9132a6ad081a9f67fcff93cb1987dec501dfd4ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43d85cda-4289-8e05-27b4-f54127d2e4e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e0cdc9e-3693-03e4-a476-c5c2f9b13d12",
  "kind": "theorem",
  "lexical_name": "to_skyscraper_fromStalk",
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
  "slug": "to-skyscraper-fromstalk--8c826487ea6a3e57fecffc52",
  "source": {
    "blob": "9132a6ad081a9f67fcff93cb1987dec501dfd4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 299,
    "path": "GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c826487ea6a3e57fecffc52135a82af8f6a3a6a444dd5219bcfc01eb4244ed2",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e0cdc9e-3693-03e4-a476-c5c2f9b13d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_skyscraper_fromStalk {𝓕 : Presheaf C X} {c : C} (f : 𝓕 ⟶ skyscraperPresheaf p₀ c) :
    toSkyscraperPresheaf p₀ (fromStalk _ f) = f :=
  NatTrans.ext _ _ <|
    funext fun U =>
      (em (p₀ ∈ U.unop)).elim
        (fun h => by
          dsimp; split_ifs;
          erw [← Category.assoc, colimit.ι_desc, Category.assoc, eqToHom_trans, eqToHom_refl,
            Category.comp_id]
          rfl)
        fun h => by dsimp; split_ifs; apply ((if_neg h).symm.ndrec terminalIsTerminal).hom_ext
#align stalk_skyscraper_presheaf_adjunction_auxs.to_skyscraper_from_stalk StalkSkyscraperPresheafAdjunctionAuxs.to_skyscraper_fromStalk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9132a6ad081a9f67fcff93cb1987dec501dfd4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
