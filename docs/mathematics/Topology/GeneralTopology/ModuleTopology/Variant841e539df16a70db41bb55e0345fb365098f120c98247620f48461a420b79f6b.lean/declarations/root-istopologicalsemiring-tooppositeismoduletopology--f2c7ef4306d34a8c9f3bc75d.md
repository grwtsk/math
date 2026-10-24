# _root_.IsTopologicalSemiring.toOppositeIsModuleTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15048b824ff87992386af0d62a9e09b3f5ae8202bda0bb2ad7e1995cd8929707",
  "kind": "instance",
  "lexical_name": "_root_.IsTopologicalSemiring.toOppositeIsModuleTopology",
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
  "slug": "root-istopologicalsemiring-tooppositeismoduletopology--f2c7ef4306d34a8c9f3bc75d",
  "source": {
    "blob": "27dc805877bd08369627e7a2f39843214cd8651c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2c7ef4306d34a8c9f3bc75daf8c4dd0d7f15df6123dd12f80b7902ed6fee521",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15048b824ff87992386af0d62a9e09b3f5ae8202bda0bb2ad7e1995cd8929707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.IsTopologicalSemiring.toOppositeIsModuleTopology : IsModuleTopology Rᵐᵒᵖ R :=
  .iso (MulOpposite.opContinuousLinearEquiv Rᵐᵒᵖ).symm

end MulOpposite

section function

variable {R : Type*} [τR : TopologicalSpace R] [Semiring R]
variable {A : Type*} [AddCommMonoid A] [Module R A] [aA : TopologicalSpace A] [IsModuleTopology R A]
variable {B : Type*} [AddCommMonoid B] [Module R B] [aB : TopologicalSpace B]
    [ContinuousAdd B] [ContinuousSMul R B]

/-- Every `R`-linear map between two topological `R`-modules, where the source has the module
topology, is continuous. -/
@[fun_prop, continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27dc805877bd08369627e7a2f39843214cd8651c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
