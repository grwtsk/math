# findTransitionIndexForTimestamp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61e2e314b6918a85751794f6bf62e81b24aeff2d9463d5ac7eb4989cd89d4e25",
  "kind": "def",
  "lexical_name": "findTransitionIndexForTimestamp",
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
  "slug": "findtransitionindexfortimestamp--eb1125e2f7ac701bd1008bd9",
  "source": {
    "blob": "3b193debc67d4362dbd16ce30c1756a30ad5c5eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb1125e2f7ac701bd1008bd9f7e2d87776bdc16c9b5f0c533b52ab25be555b81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61e2e314b6918a85751794f6bf62e81b24aeff2d9463d5ac7eb4989cd89d4e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findTransitionIndexForTimestamp (transitions : Array Transition) (timestamp : Timestamp) : Option Nat :=
  let value := timestamp.toSecondsSinceUnixEpoch
  match transitions.findIdx? (fun t => t.time.val > value.val) with
  | some 0 => none
  | some i => some (i - 1)
  | none => if transitions.isEmpty then none else some (transitions.size - 1)

/--
Finds the transition in effect at a given timestamp in `Array Transition`.
Returns the most recent transition that started at or before the timestamp,
or `none` if the timestamp precedes all transitions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variantd971294b1cb8862fc4d52ea4be182c981df4af7be9a69cbf9416a537642440d6.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b193debc67d4362dbd16ce30c1756a30ad5c5eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
