# mem_cardinalGenerate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3adc128eb9c1816969f42269bd1ce33f5ed3d1a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df53e0c2-dcef-b6f5-a95e-f12c90acb054",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:258e4666-5ad7-7db7-9488-ee9cf634a350",
  "kind": "theorem",
  "lexical_name": "mem_cardinalGenerate_iff",
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
  "slug": "mem-cardinalgenerate-iff--f076c053c00b8f82fc44fb7d",
  "source": {
    "blob": "3adc128eb9c1816969f42269bd1ce33f5ed3d1a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f076c053c00b8f82fc44fb7d5d4a7f1bbee83f01b80f9ce776012845a57330c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258e4666-5ad7-7db7-9488-ee9cf634a350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_cardinalGenerate_iff {s : Set α} {hreg : c.IsRegular} :
    s ∈ cardinalGenerate g (IsRegular.nat_lt hreg 2) ↔
    ∃ S : Set (Set α), S ⊆ g ∧ (#S < c) ∧ ⋂₀ S ⊆ s := by
  constructor <;> intro h
  · induction h with
    | @basic s hs =>
      refine ⟨{s}, singleton_subset_iff.mpr hs, ?_⟩
      simpa [subset_refl] using IsRegular.nat_lt hreg 1
    | univ =>
      exact ⟨∅, ⟨empty_subset g, mk_eq_zero (∅ : Set <| Set α) ▸ IsRegular.nat_lt hreg 0, by simp⟩⟩
    | superset _ _ ih => exact Exists.imp (by tauto) ih
    | @sInter S Sct _ ih =>
      choose T Tg Tct hT using ih
      refine ⟨⋃ (s) (H : s ∈ S), T s H, by simpa,
        (Cardinal.card_biUnion_lt_iff_forall_of_isRegular hreg Sct).2 Tct, ?_⟩
      apply subset_sInter
      apply fun s H => subset_trans (sInter_subset_sInter (subset_iUnion₂ s H)) (hT s H)
  rcases h with ⟨S, Sg, Sct, hS⟩
  have : CardinalInterFilter (cardinalGenerate g (IsRegular.nat_lt hreg 2)) c :=
    cardinalInter_ofCardinalGenerate _ _
  exact mem_of_superset ((cardinal_sInter_mem Sct).mpr
    (fun s H => CardinalGenerateSets.basic (Sg H))) hS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3adc128eb9c1816969f42269bd1ce33f5ed3d1a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
