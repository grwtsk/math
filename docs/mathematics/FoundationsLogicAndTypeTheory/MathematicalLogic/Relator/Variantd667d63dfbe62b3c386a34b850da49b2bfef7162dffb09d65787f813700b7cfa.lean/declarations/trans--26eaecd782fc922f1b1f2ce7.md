# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b6ab3c17cbf6f3c0f6c27ce73e98ba28da1d928",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d667d63dfbe62b3c386a34b850da49b2bfef7162dffb09d65787f813700b7cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f196be-4b85-daaf-0807-562aa185fce7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0808649-8300-8cac-f396-fb6228740101",
  "kind": "lemma",
  "lexical_name": "trans",
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
  "slug": "trans--26eaecd782fc922f1b1f2ce7",
  "source": {
    "blob": "2b6ab3c17cbf6f3c0f6c27ce73e98ba28da1d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantd667d63dfbe62b3c386a34b850da49b2bfef7162dffb09d65787f813700b7cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26eaecd782fc922f1b1f2ce750ef224ca890479d65cc5616366749fbe7b6c8cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantd667d63dfbe62b3c386a34b850da49b2bfef7162dffb09d65787f813700b7cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0808649-8300-8cac-f396-fb6228740101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma trans (hr : ∀ (a : α) (b : β) (c : γ), r₁₂ a b → r₂₃ b c → r₁₃ a c) :
    LeftTotal r₁₂ → LeftTotal r₂₃ → LeftTotal r₁₃ :=
  fun h₁ h₂ a ↦ let ⟨b, hab⟩ := h₁ a; let ⟨c, hbc⟩ := h₂ b; ⟨c, hr _ _ _ hab hbc⟩

end LeftTotal

namespace RightTotal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantd667d63dfbe62b3c386a34b850da49b2bfef7162dffb09d65787f813700b7cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relator/Variantd667d63dfbe62b3c386a34b850da49b2bfef7162dffb09d65787f813700b7cfa.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6ab3c17cbf6f3c0f6c27ce73e98ba28da1d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
