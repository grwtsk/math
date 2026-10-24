# instMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d52d27b49d1b89fba6081dc954142e616bbe2b643e0ef7b84b4c4f158fb58c0a",
  "kind": "instance",
  "lexical_name": "instMonoid",
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
  "slug": "instmonoid--b9e97c6eb32c088b38972ff8",
  "source": {
    "blob": "98e5e9f900893f74099bd577d34042447ed17df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 186,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9e97c6eb32c088b38972ff8a97ed76ba7f1da0c8a8df15be0a10b2d364b0364",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d52d27b49d1b89fba6081dc954142e616bbe2b643e0ef7b84b4c4f158fb58c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMonoid [Semigroup α] : Monoid (WithOne α) where
  __ := instMulOneClass
  mul_assoc
    | 1, b, c => by simp
    | (a : α), 1, c => by simp
    | (a : α), (b : α), 1 => by simp
    | (a : α), (b : α), (c : α) => by simp_rw [← coe_mul, mul_assoc]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant74832495088007c4d980ab60ee4f90729e6e8753e38562101b9a5b6609fec8ef.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98e5e9f900893f74099bd577d34042447ed17df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
