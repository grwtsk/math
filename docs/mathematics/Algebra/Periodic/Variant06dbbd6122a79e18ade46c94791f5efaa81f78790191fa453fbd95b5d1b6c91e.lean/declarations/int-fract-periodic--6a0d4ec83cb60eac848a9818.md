# Int.fract_periodic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e04a2b5d-d4f3-bed0-4746-f88abcd23680",
  "kind": "theorem",
  "lexical_name": "Int.fract_periodic",
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
  "slug": "int-fract-periodic--6a0d4ec83cb60eac848a9818",
  "source": {
    "blob": "8b7413142eb0f41aa2730a0c4901fd0a71affa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 177,
    "path": "GRWTSK/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0d4ec83cb60eac848a9818443e772245665d61c3fd7365cae205916134f7aa",
  "verification": {
    "reference": "docs/verification/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e04a2b5d-d4f3-bed0-4746-f88abcd23680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.fract_periodic (α) [Ring α] [LinearOrder α] [IsStrictOrderedRing α] [FloorRing α] :
    Function.Periodic Int.fract (1 : α) := fun a => mod_cast Int.fract_add_intCast a 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Periodic/Variant06dbbd6122a79e18ade46c94791f5efaa81f78790191fa453fbd95b5d1b6c91e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b7413142eb0f41aa2730a0c4901fd0a71affa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
