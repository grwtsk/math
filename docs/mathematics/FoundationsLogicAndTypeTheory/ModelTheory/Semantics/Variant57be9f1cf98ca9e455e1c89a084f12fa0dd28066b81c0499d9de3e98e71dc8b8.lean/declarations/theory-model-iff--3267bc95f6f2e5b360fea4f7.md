# theory_model_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a059889a228ea4409cb604b1fb01a98f3045cd90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1034,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba51cfb6-0072-3f35-051f-4c3d72b3eca8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aef7b6d0-8941-4558-d577-d1e6e0220843",
  "kind": "theorem",
  "lexical_name": "theory_model_iff",
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
  "slug": "theory-model-iff--3267bc95f6f2e5b360fea4f7",
  "source": {
    "blob": "a059889a228ea4409cb604b1fb01a98f3045cd90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1037,
    "line": 1034,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3267bc95f6f2e5b360fea4f752076e778058b00df58145f758f1ae8d04bc7618",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef7b6d0-8941-4558-d577-d1e6e0220843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1034–1037.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theory_model_iff (h : M ≅[L] N) : M ⊨ T ↔ N ⊨ T := by
  rw [Theory.model_iff_subset_completeTheory, Theory.model_iff_subset_completeTheory,
    h.completeTheory_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean#L1034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059889a228ea4409cb604b1fb01a98f3045cd90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
