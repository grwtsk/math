# instNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59023640dc3d3a26142fbae85594ed75bb3458c6e51e8fe933f11f0850c5bfb1",
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
  "slug": "instnonassocsemiring--8bb25d4b0c034431c6b6cefa",
  "source": {
    "blob": "7e2e7c4b962a92dfa6733c99b68ab2205c64aff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 424,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bb25d4b0c034431c6b6cefae6328ed3e4129d9fb50b2d6567f2b30a8a5f33c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59023640dc3d3a26142fbae85594ed75bb3458c6e51e8fe933f11f0850c5bfb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–448.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2e7c4b962a92dfa6733c99b68ab2205c64aff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
