# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.shadow_iterate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16338754-8b01-6c58-be57-e37f58dd9ec1",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.shadow_iterate",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-shadow-variant4c94cd65e0--33c5c8004d682df9b0cc8d0c",
  "source": {
    "blob": "6c3af200d171331e0cb87b4ec52b18b98d383df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c5c8004d682df9b0cc8d0c2fd639787faebaab15de100a562029ef7659581a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16338754-8b01-6c58-be57-e37f58dd9ec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Shadow.Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.Set.Sized.shadow_iterate (h𝒜 : (𝒜 : Set (Finset α)).Sized r) :
    (∂^[k] 𝒜 : Set (Finset α)).Sized (r - k) := by
  simp_rw [Set.Sized, mem_coe, mem_shadow_iterate_iff_exists_sdiff]
  rintro t ⟨s, hs, hts, rfl⟩
  rw [card_sdiff hts, ← h𝒜 hs, Nat.sub_sub_self (card_le_card hts)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant5e67637a1bc9e9fd7849330fd5a79beb3a43f4f0f9b4820a84cb0c1d6877964e.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3af200d171331e0cb87b4ec52b18b98d383df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
