# instSMulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ded96ca1f38dd7c68e1a3272d253acac667f69ee0b3acb5e21930df0e9088c7",
  "kind": "instance",
  "lexical_name": "instSMulCommClass",
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
  "slug": "instsmulcommclass--a6adbf1310b8b99258c86bd3",
  "source": {
    "blob": "0868213798a1c636cc1a0cbcb614e9944f61bd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6adbf1310b8b99258c86bd3264da10fe9c7d9e45d2e8f9e3447c6e4d61ac059",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ded96ca1f38dd7c68e1a3272d253acac667f69ee0b3acb5e21930df0e9088c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulCommClass {R : Type*} [Semiring R] [NonUnitalNonAssocSemiring β]
    [TopologicalSemiring β] [Module R β] [ContinuousConstSMul R β] [SMulCommClass R β β] :
    SMulCommClass R C₀(α, β) C₀(α, β) where
  smul_comm r f g := by
    ext
    simp only [smul_eq_mul, coe_smul, coe_mul, Pi.smul_apply, Pi.mul_apply]
    rw [← smul_eq_mul, ← smul_eq_mul, smul_comm]

end AlgebraicStructure

section Uniform

variable [UniformSpace β] [UniformSpace γ] [Zero γ] [ZeroAtInftyContinuousMapClass F β γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0868213798a1c636cc1a0cbcb614e9944f61bd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
