# instSMulCommClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:226f551213e044028dc4add404eed62340f90a6e78f528f3d545d6a428a48189",
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
  "slug": "instsmulcommclass--e5ecb949f79a4090df663169",
  "source": {
    "blob": "6f79b9219f4bdf77ba4f929d6bab7b66539c77b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ecb949f79a4090df6631696421df9fe898fb71246ebd85087dd07014dfc2b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:226f551213e044028dc4add404eed62340f90a6e78f528f3d545d6a428a48189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulCommClass {R : Type*} [Semiring R] [NonUnitalNonAssocSemiring β]
    [IsTopologicalSemiring β] [Module R β] [ContinuousConstSMul R β] [SMulCommClass R β β] :
    SMulCommClass R C₀(α, β) C₀(α, β) where
  smul_comm r f g := by
    ext
    simp only [smul_eq_mul, coe_smul, coe_mul, Pi.smul_apply, Pi.mul_apply]
    rw [← smul_eq_mul, ← smul_eq_mul, smul_comm]

end AlgebraicStructure

section Uniform

variable [UniformSpace β] [UniformSpace γ] [Zero γ]
variable [FunLike F β γ] [ZeroAtInftyContinuousMapClass F β γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant64563bf4bdecb8eae7f53ea140926f7a60e75b9507d3784011924d7b6c8e4169.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f79b9219f4bdf77ba4f929d6bab7b66539c77b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
