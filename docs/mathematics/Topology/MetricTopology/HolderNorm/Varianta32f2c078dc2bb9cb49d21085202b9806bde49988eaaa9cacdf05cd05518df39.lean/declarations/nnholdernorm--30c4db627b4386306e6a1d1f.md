# nnHolderNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1069fe032d8659bc2e6a7c3c7f64a4bb862650d19c8288e578fef7a461967808",
  "kind": "def",
  "lexical_name": "nnHolderNorm",
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
  "slug": "nnholdernorm--30c4db627b4386306e6a1d1f",
  "source": {
    "blob": "bccd7b34ab8ad5c635391a39e37be13e98ec42fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 63,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30c4db627b4386306e6a1d1f0ef1ea282a425e541e39a9ba0cc62b21a98eaf14",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1069fe032d8659bc2e6a7c3c7f64a4bb862650d19c8288e578fef7a461967808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nnHolderNorm (r : ℝ≥0) (f : X → Y) : ℝ≥0 := (eHolderNorm r f).toNNReal

/-- A function `f` is `MemHolder r f` if it is Hölder continuous. Namely, `f` has a finite
`r`-Hölder constant. This is equivalent to `f` having finite Hölder norm.
c.f. `memHolder_iff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Varianta32f2c078dc2bb9cb49d21085202b9806bde49988eaaa9cacdf05cd05518df39.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccd7b34ab8ad5c635391a39e37be13e98ec42fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
