# fixedPointNaturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c0e2bf0e8b986272ac22500af77c1171cf03c25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f88dfe36-c5b5-a7a1-f2a6-1a674a3acaab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f86d01e-391f-7d69-6beb-cb0f4a0cc32e",
  "kind": "theorem",
  "lexical_name": "fixedPointNaturality",
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
  "slug": "fixedpointnaturality--a8ce5ed6b03cd0a273e727cc",
  "source": {
    "blob": "1c0e2bf0e8b986272ac22500af77c1171cf03c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8ce5ed6b03cd0a273e727cc15bbf5ed1b759832431f409f914c8c94560cb696",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f86d01e-391f-7d69-6beb-cb0f4a0cc32e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPointNaturality
    (naturality : OperatorPathNaturality operators action)
    (authority : Concept.Profile) :
    Concept.PropertyNaturality action
      (exactFixedPointProperty operators authority) where
  natural := by
    intro source target path state fixed
    change
      (operators target).step (action.map path state) =
        action.map path state
    calc
      (operators target).step (action.map path state) =
          action.map path ((operators source).step state) :=
        (naturality.step_commutes path state).symm
      _ = action.map path state :=
        congrArg (action.map path) fixed

/-- A commuting path maps one exact fixed point to another exact fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0e2bf0e8b986272ac22500af77c1171cf03c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
