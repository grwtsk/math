# collectDirectVarsInPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2d05a722da66f6a1b8bff7498080586845b0c8f4b0899a4306620ca349267dd",
  "kind": "def",
  "lexical_name": "collectDirectVarsInPattern",
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
  "slug": "collectdirectvarsinpattern--a56fc5109b5d06206e8a6ab2",
  "source": {
    "blob": "e7b0240e5c7d53163b28ee2991edb0d61b70eaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a56fc5109b5d06206e8a6ab213b488a46670685d3f628c79ed744d19ed2f82a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2d05a722da66f6a1b8bff7498080586845b0c8f4b0899a4306620ca349267dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectDirectVarsInPattern (p : Pattern) : Array FVarId :=
  go p #[]
where
  go (p : Pattern) (a : Array FVarId) : Array FVarId :=
    match p with
    | .var v => a.push v
    | .as v p' _ => go p' (a.push v)
    | _ => a

/--
This function adds an additional `below` discriminant to a matcher application and transforms each
alternative with the provided `transformAlt` function. The provided recursion context is used for
finding below proofs that correspond to discriminants and is extended with new proofs when calling
`transformAlt`. `belowParams` should contain parameters and motives for `below` applications where
the first `nrealParams` are parameters and the remaining are motives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b0240e5c7d53163b28ee2991edb0d61b70eaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
