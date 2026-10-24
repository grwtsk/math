# Prod.locallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41a04dc39632b38a1869df502a5e5dfaa535bf3c74b2b1265e67273e319906e2",
  "kind": "instance",
  "lexical_name": "Prod.locallyConvexSpace",
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
  "slug": "prod-locallyconvexspace--ac99a0b5b119f0197501b1f0",
  "source": {
    "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 216,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac99a0b5b119f0197501b1f032d2c600da93d1514940d51ef593788c1eee667f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41a04dc39632b38a1869df502a5e5dfaa535bf3c74b2b1265e67273e319906e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.locallyConvexSpace [TopologicalSpace E] [TopologicalSpace F] [LocallyConvexSpace 𝕜 E]
    [LocallyConvexSpace 𝕜 F] : LocallyConvexSpace 𝕜 (E × F) :=
  .inf (.induced (LinearMap.fst _ _ _)) (.induced (LinearMap.snd _ _ _))

end LatticeOps

section LinearOrderedSemiring

/-- A linear ordered semiring is a locally convex space over itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4ca0adf7dcfdd8baed1c0decdce193a11d196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
