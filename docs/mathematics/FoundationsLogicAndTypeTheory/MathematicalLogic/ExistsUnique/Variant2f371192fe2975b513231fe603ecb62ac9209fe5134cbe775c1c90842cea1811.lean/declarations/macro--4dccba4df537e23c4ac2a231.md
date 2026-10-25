# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adfbaa52f0a019b017c3f9268d1687d698273d791363c4504eea326c7d83b464",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--4dccba4df537e23c4ac2a231",
  "source": {
    "blob": "563680ca3ebb9e2379a4b09fadf8acef36a9c2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f371192fe2975b513231fe603ecb62ac9209fe5134cbe775c1c90842cea1811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dccba4df537e23c4ac2a2317e2f4b481fbcd5c87791b3849563894cc8b3979b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f371192fe2975b513231fe603ecb62ac9209fe5134cbe775c1c90842cea1811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adfbaa52f0a019b017c3f9268d1687d698273d791363c4504eea326c7d83b464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "∃!" xs:explicitBinders ", " b:term : term => do
  if !isExplicitBinderSingular xs then
    Macro.throwErrorAt xs "\
      The `ExistsUnique` notation should not be used with more than one binder.\n\
      \n\
      The reason for this is that `∃! (x : α), ∃! (y : β), p x y` has a completely different \
      meaning from `∃! q : α × β, p q.1 q.2`. \
      To prevent confusion, this notation requires that you be explicit \
      and use one with the correct interpretation."
  expandExplicitBinders ``ExistsUnique xs b

/--
Pretty-printing for `ExistsUnique`, following the same pattern as pretty printing for `Exists`.
However, it does *not* merge binders.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f371192fe2975b513231fe603ecb62ac9209fe5134cbe775c1c90842cea1811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExistsUnique/Variant2f371192fe2975b513231fe603ecb62ac9209fe5134cbe775c1c90842cea1811.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563680ca3ebb9e2379a4b09fadf8acef36a9c2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
