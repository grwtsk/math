# Array.groupByKey

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:183f99b5cb3d6d6c9787e1d33ef249462358f86513a80709d0f0a41bfa3ab337",
  "kind": "def",
  "lexical_name": "Array.groupByKey",
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
  "slug": "array-groupbykey--0ac71ef46013cffa0af32007",
  "source": {
    "blob": "4b83503ca03aed06ee63b18ede8e22647744b1c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ac71ef46013cffa0af3200733c8abe4cd57600f49f82dfa257f64b1de44ae21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:183f99b5cb3d6d6c9787e1d33ef249462358f86513a80709d0f0a41bfa3ab337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Array.groupByKey [BEq α] [Hashable α] (key : β → α) (xs : Array β)
    : Std.HashMap α (Array β) := Id.run do
  let mut groups := ∅
  for x in xs do
    groups := groups.alter (key x) (some <| ·.getD #[] |>.push x)
  return groups

/--
Groups the elements of a list `xs` according to the function `key`, returning a hash map in which
each group is associated with its key. Groups preserve the relative order of elements in `xs`.

Example:
```lean example
#eval [0, 1, 2, 3, 4, 5, 6].groupByKey (· % 2)
```
```output
Std.HashMap.ofList [(0, [0, 2, 4, 6]), (1, [1, 3, 5])]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc7849feae33d2991a76a64f445dd789c988fbc7bac421c3fb4bec697179fcd92.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b83503ca03aed06ee63b18ede8e22647744b1c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
