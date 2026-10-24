# NonUnitalSeminormedRing.isBoundedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7032d9f8ceb4255035b8ef370579064fab774fca7b483dfda50802ba5c224f66",
  "kind": "instance",
  "lexical_name": "NonUnitalSeminormedRing.isBoundedSMul",
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
  "slug": "nonunitalseminormedring-isboundedsmul--c187d4fdde3c69658b3d290f",
  "source": {
    "blob": "a3e0f14f1530381add53be56c83cbc8354e5d7b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Topology/MetricTopology/MulAction/Variantcd7a02a58acf58c767b49c5cbd355b634656a39583aaa92c588518275394308d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c187d4fdde3c69658b3d290f3f48cf7c12f532c98d9e5f7a3474fa7e52e43c14",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MulAction/Variantcd7a02a58acf58c767b49c5cbd355b634656a39583aaa92c588518275394308d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7032d9f8ceb4255035b8ef370579064fab774fca7b483dfda50802ba5c224f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NonUnitalSeminormedRing.isBoundedSMul [NonUnitalSeminormedRing α] :
    IsBoundedSMul α α where
  dist_smul_pair' x y₁ y₂ := by simpa [mul_sub, dist_eq_norm] using norm_mul_le x (y₁ - y₂)
  dist_pair_smul' x₁ x₂ y := by simpa [sub_mul, dist_eq_norm] using norm_mul_le (x₁ - x₂) y

/-- Right multiplication is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MulAction/Variantcd7a02a58acf58c767b49c5cbd355b634656a39583aaa92c588518275394308d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MulAction/Variantcd7a02a58acf58c767b49c5cbd355b634656a39583aaa92c588518275394308d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3e0f14f1530381add53be56c83cbc8354e5d7b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
