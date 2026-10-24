# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:010364505bac82146735d8367352bbf0c12025fe9eb330d97c9cfc4d5e0b3640",
  "kind": "instance",
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
  "slug": "instance--cdca7733ade85a7c5893d721",
  "source": {
    "blob": "c3cd19d6b51c68fe749ec327131e3b22477097be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 435,
    "path": "GRWTSK/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdca7733ade85a7c5893d721ca5af81ff327ad5055c7b583d647e7fb770bec3a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:010364505bac82146735d8367352bbf0c12025fe9eb330d97c9cfc4d5e0b3640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Ring.toNonUnitalRing : NonUnitalRing α where
  __ := ‹Ring α›
  zero_mul := fun a => add_left_cancel (a := 0 * a) <| by rw [← add_mul, zero_add, add_zero]
  mul_zero := fun a => add_left_cancel (a := a * 0) <| by rw [← mul_add, add_zero, add_zero]
#align ring.to_non_unital_ring Ring.toNonUnitalRing

-- A (unital, associative) ring is a not-necessarily-associative ring
-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variante1fbf7668b2820fb42f6153c5a90fabaa34d67b964418e240b6fd28cf371b635.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3cd19d6b51c68fe749ec327131e3b22477097be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
