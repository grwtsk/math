# WF.inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f001c012d55ff50b5a617c38a1f984c723f6868e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 830,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2cec887-cc33-7dec-179b-761f893c0891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35d9b82b-74cf-4081-8dd4-346fcb5e2475",
  "kind": "theorem",
  "lexical_name": "WF.inter",
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
  "slug": "wf-inter--3bba3427be01c67c3eed3ec2",
  "source": {
    "blob": "f001c012d55ff50b5a617c38a1f984c723f6868e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 830,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bba3427be01c67c3eed3ec250617f2f7d42b3f38bd1549da0de413450e4ad64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35d9b82b-74cf-4081-8dd4-346fcb5e2475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WF.inter [BEq α] [Hashable α] {m₁ m₂ : Raw α β} (h₁ : m₁.WF) (h₂ : m₂.WF) : (m₁ ∩ m₂ : Raw α β).WF := by
  simp [Inter.inter, Std.DHashMap.Raw.inter, h₁.size_buckets_pos, h₂.size_buckets_pos]
  exact WF.inter₀ h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Raw/Variantc783b44ae62affd1bc2ed422d5d4da4760f39591def4f7dbc4b5e724f908cd84.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f001c012d55ff50b5a617c38a1f984c723f6868e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
