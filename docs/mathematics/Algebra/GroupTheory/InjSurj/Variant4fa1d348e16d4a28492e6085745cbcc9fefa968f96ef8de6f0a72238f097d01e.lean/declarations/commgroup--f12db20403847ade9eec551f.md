# commGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a0ffb83757de21b82ee77c8ef1b8e42ff9cb8f43ddb59591efd500970fcbd0a",
  "kind": "def",
  "lexical_name": "commGroup",
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
  "slug": "commgroup--f12db20403847ade9eec551f",
  "source": {
    "blob": "ea6884c6a88f272e83b2f1dedf28939a17f31b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 334,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f12db20403847ade9eec551f2a739df75cc49474e99f5b48167ced76d043b9f7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a0ffb83757de21b82ee77c8ef1b8e42ff9cb8f43ddb59591efd500970fcbd0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def commGroup [CommGroup M₂] (f : M₁ → M₂) (hf : Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n) : CommGroup M₁ :=
  { hf.commMonoid f one mul npow, hf.group f one mul inv div npow zpow with }
#align function.injective.comm_group Function.Injective.commGroup
#align function.injective.add_comm_group Function.Injective.addCommGroup

/-- A type endowed with `0`, `1` and `+` is an additive commutative group with one, if it admits an
injective map that preserves `0`, `1` and `+` to an additive commutative group with one.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea6884c6a88f272e83b2f1dedf28939a17f31b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
