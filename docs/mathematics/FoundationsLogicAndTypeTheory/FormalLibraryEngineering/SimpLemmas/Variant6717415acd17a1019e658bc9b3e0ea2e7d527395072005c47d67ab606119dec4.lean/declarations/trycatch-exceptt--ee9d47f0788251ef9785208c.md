# tryCatch_ExceptT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a226380477e35e3e61c8e855ec8f48ac236d08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6717415acd17a1019e658bc9b3e0ea2e7d527395072005c47d67ab606119dec4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0efef410-d97a-1771-2b90-b45d0bd7f255",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4134c0bf-092e-75b1-4937-57fec7fd44b1",
  "kind": "theorem",
  "lexical_name": "tryCatch_ExceptT",
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
  "slug": "trycatch-exceptt--ee9d47f0788251ef9785208c",
  "source": {
    "blob": "f6a226380477e35e3e61c8e855ec8f48ac236d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant6717415acd17a1019e658bc9b3e0ea2e7d527395072005c47d67ab606119dec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9d47f0788251ef9785208cf0fb18c0a1b05492764a0373061adaa14d5dba48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant6717415acd17a1019e658bc9b3e0ea2e7d527395072005c47d67ab606119dec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4134c0bf-092e-75b1-4937-57fec7fd44b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tryCatch_ExceptT [Monad m] [WPMonad m ps] :
    wp⟦MonadExceptOf.tryCatch x h : ExceptT ε m α⟧ Q = wp⟦x⟧ (Q.1, fun e => wp⟦h e⟧ Q, Q.2.2) := by
  simp only [wp, MonadExceptOf.tryCatch, ExceptT.tryCatch, ExceptT.run_mk,
    PredTrans.apply_pushExcept, bind]
  simp only [ExceptT.run]
  congr
  ext x
  cases x <;> simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant6717415acd17a1019e658bc9b3e0ea2e7d527395072005c47d67ab606119dec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant6717415acd17a1019e658bc9b3e0ea2e7d527395072005c47d67ab606119dec4.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a226380477e35e3e61c8e855ec8f48ac236d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
