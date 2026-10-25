# IterM.not_isPlausibleNthOutputStep_yield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da556b180dab2d02f036e43796c80adcc7268e9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8af60989-8802-53c8-b2fb-72b9e275c891",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59b403ea-58a2-8bce-bef4-533422b8891b",
  "kind": "theorem",
  "lexical_name": "IterM.not_isPlausibleNthOutputStep_yield",
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
  "slug": "iterm-not-isplausiblenthoutputstep-yield--9f7591608e881a9c459aa1fc",
  "source": {
    "blob": "da556b180dab2d02f036e43796c80adcc7268e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f7591608e881a9c459aa1fcfe7946e01497f83f5ca7520c685b937ca30f6379",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b403ea-58a2-8bce-bef4-533422b8891b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IterM.not_isPlausibleNthOutputStep_yield {α β : Type w} {m : Type w → Type w'} [Iterator α m β]
    {n : Nat} {it it' : IterM (α := α) m β} :
    ¬ it.IsPlausibleNthOutputStep n (.skip it') := by
  intro h
  generalize h' : IterStep.skip it' = step at h
  induction h
  · cases h'
  · cases h'
  · simp_all
  · simp_all

/--
`IteratorAccess α m` provides efficient implementations for random access or iterators that support
it. `it.nextAtIdx? n` either returns the step in which the `n`th value of `it` is emitted
(necessarily of the form `.yield _ _`) or `.done` if `it` terminates before emitting the `n`th
value.

For monadic iterators, the monadic effects of this operation may differ from manually iterating
to the `n`-th value because `nextAtIdx?` can take shortcuts. By the signature, the return value
is guaranteed to plausible in the sense of `IterM.IsPlausibleNthOutputStep`.

This class is experimental and users of the iterator API should not explicitly depend on it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Access/Variant45bc9e647d3accb4380e73604271873b918caeed145ba07b201a55ee091a9be7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da556b180dab2d02f036e43796c80adcc7268e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
