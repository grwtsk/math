# waitFind?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61600722e40135ff85d6972dc114f37135e0f48a7aeab705866f0d1c1848e79d",
  "kind": "def",
  "lexical_name": "waitFind?",
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
  "slug": "waitfind--9b9c08033003fcd86d06bdb1",
  "source": {
    "blob": "a89d2af053b45a4985a28d641630ea9d4a633c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b9c08033003fcd86d06bdb17891e655b45d25a77101d28c7a4a81f28b79541f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61600722e40135ff85d6972dc114f37135e0f48a7aeab705866f0d1c1848e79d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def waitFind? (p : α → Bool) : AsyncList ε α → ServerTask (Except ε (Option α))
  | nil => .pure <| .ok none
  | cons hd tl =>
    if p hd then .pure <| Except.ok <| some hd
    else tl.waitFind? p
  | delayed tl =>
    tl.bindCheap fun
      | .ok tl   => tl.waitFind? p
      | .error e => .pure <| .error e

/--
Retrieve the already-computed prefix of the list. If computation has finished with an error, return it as well.
The returned boolean indicates whether the complete `AsyncList` was returned, or whether only a
proper prefix was returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89d2af053b45a4985a28d641630ea9d4a633c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
