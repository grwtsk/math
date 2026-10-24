# Pi.separatelyContinuousMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdbaeaefea8c9e7ddc92b40089540c0bbd9bf2d54db638ae9ab38e3ff9e9a74b",
  "kind": "instance",
  "lexical_name": "Pi.separatelyContinuousMul",
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
  "slug": "pi-separatelycontinuousmul--31c8030045520c9c025b3416",
  "source": {
    "blob": "aec0e747f56d1284079b639fd4ab1441ee848698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c8030045520c9c025b3416e6ae5a17939ed5592293ecd40c1b6dc4b37fa303",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdbaeaefea8c9e7ddc92b40089540c0bbd9bf2d54db638ae9ab38e3ff9e9a74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.separatelyContinuousMul {C : ι → Type*} [∀ i, TopologicalSpace (C i)] [∀ i, Mul (C i)]
    [∀ i, SeparatelyContinuousMul (C i)] : SeparatelyContinuousMul (∀ i, C i) where
  continuous_mul_const {_} := continuous_pi fun i ↦ (continuous_apply i).mul_const _
  continuous_const_mul {_} := continuous_pi fun i ↦ (continuous_apply i).const_mul _

/-- A version of `Pi.continuousMul` for non-dependent functions. It is needed because sometimes
Lean 3 fails to use `Pi.continuousMul` for non-dependent functions. -/
@[to_additive /-- A version of `Pi.continuousAdd` for non-dependent functions. It is needed
because sometimes Lean fails to use `Pi.continuousAdd` for non-dependent functions. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant566dcd89bd0dea65e3b097e7dfb40d4785e1329e6b38dbe739ee9cd607312724.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aec0e747f56d1284079b639fd4ab1441ee848698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
