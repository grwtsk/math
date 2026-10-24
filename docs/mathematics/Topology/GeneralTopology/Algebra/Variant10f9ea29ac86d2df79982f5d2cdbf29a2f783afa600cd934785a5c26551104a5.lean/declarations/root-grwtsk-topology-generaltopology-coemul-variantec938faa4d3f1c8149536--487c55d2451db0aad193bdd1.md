# _root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.ContinuousLinearMap.compLeftContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be09f8b566b5fc0b24095d8661831f0464212e1a5c07723443e9e56ec9583408",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.ContinuousLinearMap.compLeftContinuous",
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
  "slug": "root-grwtsk-topology-generaltopology-coemul-variantec938faa4d3f1c8149536--487c55d2451db0aad193bdd1",
  "source": {
    "blob": "773b887421db050a3ea5a35744a08b5aca3fb957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 602,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:487c55d2451db0aad193bdd1a07801282f981efd72bf4eea2e1eb36807bd780d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be09f8b566b5fc0b24095d8661831f0464212e1a5c07723443e9e56ec9583408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.GRWTSK.Topology.GeneralTopology.CoeMul.Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.ContinuousLinearMap.compLeftContinuous (α : Type*) [TopologicalSpace α]
    (g : M →L[R] M₂) : C(α, M) →L[R] C(α, M₂) where
  __ := g.toLinearMap.toAddMonoidHom.compLeftContinuous α g.continuous
  map_smul' := fun c _ => ext fun _ => g.map_smul' c _

/-- The constant map `x ↦ y ↦ x` as a `ContinuousLinearMap`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant10f9ea29ac86d2df79982f5d2cdbf29a2f783afa600cd934785a5c26551104a5.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `773b887421db050a3ea5a35744a08b5aca3fb957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
