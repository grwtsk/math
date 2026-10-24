# quadratic_var0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ffffa4b16fe33f9c2d53d67c5eea725cf8eee1a4491f01d8aab842c8da84330",
  "kind": "def",
  "lexical_name": "quadratic_var0",
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
  "slug": "quadratic-var0--650454cd9ccb53af221e4b54",
  "source": {
    "blob": "a85bc847c2116f570fd8d80a980815efc3f61630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:650454cd9ccb53af221e4b54de584cc5127d05e390c8a58f3adcb7a70a5f8f7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ffffa4b16fe33f9c2d53d67c5eea725cf8eee1a4491f01d8aab842c8da84330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quadratic_var0 : UsesOnlyVar0 quadratic :=
  -- quadratic = (x² - 2x) + 1 = add (add (mul x x) (neg (mul 2 x))) 1
  UsesOnlyVar0.add _ _
    (UsesOnlyVar0.add _ _
      (UsesOnlyVar0.mul _ _ UsesOnlyVar0.var0 UsesOnlyVar0.var0)
      (UsesOnlyVar0.neg _
        (UsesOnlyVar0.mul _ _ (UsesOnlyVar0.const 2) UsesOnlyVar0.var0)))
    (UsesOnlyVar0.const 1)

/-- Correctness: the computed lower bound is indeed a lower bound on the true minimum.

    For all x in [0, 2], we have quad_min_result.valueBound.lo ≤ quadratic(x).
    This uses `minimizeInterval_correct` from the verified optimization module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Numerics/Variant816634cd449b7b82d2bafe8d29eac7109f8bd9299ac9cbdfb22e36f543315042.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85bc847c2116f570fd8d80a980815efc3f61630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
