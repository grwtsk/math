# filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:712a0da18500694024a208c720f33dbddeec9db434494fa1c331c7e725cd63e0",
  "kind": "def",
  "lexical_name": "filterMap",
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
  "slug": "filtermap--c4e10d30bf9ffeed17a24bdc",
  "source": {
    "blob": "7d58dee5983aa201468b99df02a6d8c18c7a1794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1709,
    "line": 1697,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4e10d30bf9ffeed17a24bdc097b7cda1d00bde932c6df3eb2a3a2a30fe6d1f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:712a0da18500694024a208c720f33dbddeec9db434494fa1c331c7e725cd63e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1697–1709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def filterMap (f : α → Option β) (as : Array α) (start := 0) (stop := as.size) : Array β :=
  Id.run <| as.filterMapM (pure <| f ·) (start := start) (stop := stop)

/--
Returns the largest element of the array, as determined by the comparison `lt`, or `none` if
the array is empty.

Examples:
* `(#[] : Array Nat).getMax? (· < ·) = none`
* `#["red", "green", "blue"].getMax? (·.length < ·.length) = some "green"`
* `#["red", "green", "blue"].getMax? (· < ·) = some "red"`
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant85b1fcc2eac430164656c02295d9cf5d3549826517a2a89083a7afae28b1e4f2.lean#L1697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d58dee5983aa201468b99df02a6d8c18c7a1794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
