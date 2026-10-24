# DistribMulActionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f63ee8a9bef44b01efa6e662ab59e403fd5dbde8cfdc6b03e145959794d8ab4d",
  "kind": "structure",
  "lexical_name": "DistribMulActionHom",
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
  "slug": "distribmulactionhom--0f0f5d0bbf78a0b86d9d4cae",
  "source": {
    "blob": "753e16c7185bf7e11cf3fb4f439e289cee3e6653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 208,
    "path": "GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f0f5d0bbf78a0b86d9d4caeb09c5b623a0b839776692495661f2520844d241d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f63ee8a9bef44b01efa6e662ab59e403fd5dbde8cfdc6b03e145959794d8ab4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DistribMulActionHom extends A →[M] B, A →+ B
#align distrib_mul_action_hom DistribMulActionHom

/-- Reinterpret an equivariant additive monoid homomorphism as an additive monoid homomorphism. -/
add_decl_doc DistribMulActionHom.toAddMonoidHom
#align distrib_mul_action_hom.to_add_monoid_hom DistribMulActionHom.toAddMonoidHom

/-- Reinterpret an equivariant additive monoid homomorphism as an equivariant function. -/
add_decl_doc DistribMulActionHom.toMulActionHom
#align distrib_mul_action_hom.to_mul_action_hom DistribMulActionHom.toMulActionHom

/- Porting note: local notation given a name, conflict with Algebra.Hom.Freiman
 see https://github.com/leanprover/lean4/issues/2000 -/
@[inherit_doc]
notation:25 (name := «DistribMulActionHomLocal≺»)
  A " →+[" M:25 "] " B:0 => DistribMulActionHom M A B

/-- `DistribMulActionHomClass F M A B` states that `F` is a type of morphisms preserving
the additive monoid structure and scalar multiplication by `M`.

You should extend this class when you extend `DistribMulActionHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `753e16c7185bf7e11cf3fb4f439e289cee3e6653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
