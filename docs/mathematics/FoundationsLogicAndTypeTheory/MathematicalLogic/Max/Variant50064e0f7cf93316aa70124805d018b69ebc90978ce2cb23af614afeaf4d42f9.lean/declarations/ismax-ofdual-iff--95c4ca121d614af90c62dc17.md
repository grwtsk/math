# isMax_ofDual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06d782fa6c7995ce5f154862e9c784c21ad183d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:989ef81f-e124-ec27-5f4c-9f1f083db160",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:039128f7-8606-b037-7627-3550dcd1af8e",
  "kind": "theorem",
  "lexical_name": "isMax_ofDual_iff",
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
  "slug": "ismax-ofdual-iff--95c4ca121d614af90c62dc17",
  "source": {
    "blob": "06d782fa6c7995ce5f154862e9c784c21ad183d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95c4ca121d614af90c62dc179095fc18d463d040cfb8845b0da1ddd514dd555f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:039128f7-8606-b037-7627-3550dcd1af8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMax_ofDual_iff {a : αᵒᵈ} : IsMax (ofDual a) ↔ IsMin a :=
  Iff.rfl
#align is_max_of_dual_iff isMax_ofDual_iff

alias ⟨_, IsTop.toDual⟩ := isBot_toDual_iff
#align is_top.to_dual IsTop.toDual

alias ⟨_, IsBot.toDual⟩ := isTop_toDual_iff
#align is_bot.to_dual IsBot.toDual

alias ⟨_, IsMax.toDual⟩ := isMin_toDual_iff
#align is_max.to_dual IsMax.toDual

alias ⟨_, IsMin.toDual⟩ := isMax_toDual_iff
#align is_min.to_dual IsMin.toDual

alias ⟨_, IsTop.ofDual⟩ := isBot_ofDual_iff
#align is_top.of_dual IsTop.ofDual

alias ⟨_, IsBot.ofDual⟩ := isTop_ofDual_iff
#align is_bot.of_dual IsBot.ofDual

alias ⟨_, IsMax.ofDual⟩ := isMin_ofDual_iff
#align is_max.of_dual IsMax.ofDual

alias ⟨_, IsMin.ofDual⟩ := isMax_ofDual_iff
#align is_min.of_dual IsMin.ofDual

end LE

section Preorder

variable [Preorder α] {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variant50064e0f7cf93316aa70124805d018b69ebc90978ce2cb23af614afeaf4d42f9.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06d782fa6c7995ce5f154862e9c784c21ad183d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
