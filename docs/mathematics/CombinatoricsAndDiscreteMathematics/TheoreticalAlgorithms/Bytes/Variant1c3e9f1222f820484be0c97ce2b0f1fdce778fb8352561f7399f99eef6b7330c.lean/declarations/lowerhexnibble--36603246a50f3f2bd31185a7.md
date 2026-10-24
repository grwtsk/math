# lowerHexNibble

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f9198c4c8e29db25c42e777707f9fcde34c0f0b25069922b84272755db9a547",
  "kind": "def",
  "lexical_name": "lowerHexNibble",
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
  "slug": "lowerhexnibble--36603246a50f3f2bd31185a7",
  "source": {
    "blob": "4fb8e81dbd50513ca27c2c6d88b2985ee4848d3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36603246a50f3f2bd31185a748d61a49ab89aa9b144134f6688ae1859f1c0c7b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f9198c4c8e29db25c42e777707f9fcde34c0f0b25069922b84272755db9a547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def lowerHexNibble (character : Char) : Nat :=
  if character = '0' then 0 else if character = '1' then 1 else
  if character = '2' then 2 else if character = '3' then 3 else
  if character = '4' then 4 else if character = '5' then 5 else
  if character = '6' then 6 else if character = '7' then 7 else
  if character = '8' then 8 else if character = '9' then 9 else
  if character = 'a' then 10 else if character = 'b' then 11 else
  if character = 'c' then 12 else if character = 'd' then 13 else
  if character = 'e' then 14 else if character = 'f' then 15 else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb8e81dbd50513ca27c2c6d88b2985ee4848d3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
