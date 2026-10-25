# exprSimplifiedLayerNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:649202d50afd4471bbea0407419b03b5a36588a91317e1958af5747b80072ac3",
  "kind": "def",
  "lexical_name": "exprSimplifiedLayerNorm",
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
  "slug": "exprsimplifiedlayernorm--145c428ca19baa79ec91f624",
  "source": {
    "blob": "5d3ed0fee4e238b31ac1b892245970986b78aab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:145c428ca19baa79ec91f624d45e5cf3ff846427044d7c8ffbe7e7a738b3df58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:649202d50afd4471bbea0407419b03b5a36588a91317e1958af5747b80072ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exprSimplifiedLayerNorm : Expr :=
  let x := Expr.var 0
  let halfX := Expr.mul x (Expr.const (1/2))
  Expr.add x (Expr.neg halfX)

#eval runBenchmark "x - x/2" exprSimplifiedLayerNorm testInterval
-- Expected: Affine tracks the correlation, giving tighter bounds

/-- ReLU-like: max(0, x) approximated as (x + |x|) / 2
    Using x² instead of |x| for smoothness: (x + sqrt(x² + ε)) / 2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkAffine/Variant2296360785932730a5ea4430d43e2b566ad60a4c685831f1cf9dad2f7b49a245.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3ed0fee4e238b31ac1b892245970986b78aab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
