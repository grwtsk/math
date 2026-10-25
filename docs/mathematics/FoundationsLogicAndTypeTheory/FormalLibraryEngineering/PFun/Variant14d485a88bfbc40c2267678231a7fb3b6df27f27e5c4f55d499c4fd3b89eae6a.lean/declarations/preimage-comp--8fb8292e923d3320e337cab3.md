# preimage_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0454d970c95632d0c41e45b7ffeed8f29d7f6c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ff80221-3b35-b46b-7003-dd557e0bb1a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ae8985e-9938-ffa9-b3b4-fa1761c55945",
  "kind": "theorem",
  "lexical_name": "preimage_comp",
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
  "slug": "preimage-comp--8fb8292e923d3320e337cab3",
  "source": {
    "blob": "e0454d970c95632d0c41e45b7ffeed8f29d7f6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb8292e923d3320e337cab309e3a60c6c2fa4a6437c493d3b47fb1c16aa8b9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae8985e-9938-ffa9-b3b4-fa1761c55945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_comp (f : β →. γ) (g : α →. β) (s : Set γ) :
    (f.comp g).preimage s = g.preimage (f.preimage s) := by
  ext
  simp_rw [mem_preimage, comp_apply, Part.mem_bind_iff, ← exists_and_right, ← exists_and_left]
  rw [exists_comm]
  simp_rw [and_assoc, and_comm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant14d485a88bfbc40c2267678231a7fb3b6df27f27e5c4f55d499c4fd3b89eae6a.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0454d970c95632d0c41e45b7ffeed8f29d7f6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
