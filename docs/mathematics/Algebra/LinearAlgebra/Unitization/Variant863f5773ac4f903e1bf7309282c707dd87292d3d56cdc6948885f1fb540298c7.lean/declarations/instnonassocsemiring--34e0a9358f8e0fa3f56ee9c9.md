# instNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22e650dcc4aae3f3050c5ba52029c1563d5a0cf294f300881e6f48341340be88",
  "kind": "instance",
  "lexical_name": "instNonAssocSemiring",
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
  "slug": "instnonassocsemiring--34e0a9358f8e0fa3f56ee9c9",
  "source": {
    "blob": "a56510dbb263bfa9945580c76aa1aef1d20587d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 456,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34e0a9358f8e0fa3f56ee9c9fddc618fb0bb52c9f7873c0791402ede627b80f9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22e650dcc4aae3f3050c5ba52029c1563d5a0cf294f300881e6f48341340be88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonAssocSemiring [Semiring R] [NonUnitalNonAssocSemiring A] [Module R A] :
    NonAssocSemiring (Unitization R A) :=
  { Unitization.instMulOneClass,
    Unitization.instAddCommMonoid with
    zero_mul := fun x =>
      ext (zero_mul x.1) <|
        show (0 : R) • x.2 + x.1 • (0 : A) + 0 * x.2 = 0 by
          rw [zero_smul, zero_add, smul_zero, zero_mul, add_zero]
    mul_zero := fun x =>
      ext (mul_zero x.1) <|
        show x.1 • (0 : A) + (0 : R) • x.2 + x.2 * 0 = 0 by
          rw [smul_zero, zero_add, zero_smul, mul_zero, add_zero]
    left_distrib := fun x₁ x₂ x₃ =>
      ext (mul_add x₁.1 x₂.1 x₃.1) <|
        show x₁.1 • (x₂.2 + x₃.2) + (x₂.1 + x₃.1) • x₁.2 + x₁.2 * (x₂.2 + x₃.2) =
            x₁.1 • x₂.2 + x₂.1 • x₁.2 + x₁.2 * x₂.2 + (x₁.1 • x₃.2 + x₃.1 • x₁.2 + x₁.2 * x₃.2) by
          simp only [smul_add, add_smul, mul_add]
          abel
    right_distrib := fun x₁ x₂ x₃ =>
      ext (add_mul x₁.1 x₂.1 x₃.1) <|
        show (x₁.1 + x₂.1) • x₃.2 + x₃.1 • (x₁.2 + x₂.2) + (x₁.2 + x₂.2) * x₃.2 =
            x₁.1 • x₃.2 + x₃.1 • x₁.2 + x₁.2 * x₃.2 + (x₂.1 • x₃.2 + x₃.1 • x₂.2 + x₂.2 * x₃.2) by
          simp only [add_smul, smul_add, add_mul]
          abel }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant863f5773ac4f903e1bf7309282c707dd87292d3d56cdc6948885f1fb540298c7.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a56510dbb263bfa9945580c76aa1aef1d20587d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
