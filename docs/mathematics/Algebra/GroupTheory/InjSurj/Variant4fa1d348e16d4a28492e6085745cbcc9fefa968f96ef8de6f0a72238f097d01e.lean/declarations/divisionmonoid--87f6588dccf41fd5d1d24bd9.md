# divisionMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9b31eb31cbbbecd9faee10c1747c142bf0790567ebb8ff3e8f354d8bf944961",
  "kind": "def",
  "lexical_name": "divisionMonoid",
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
  "slug": "divisionmonoid--87f6588dccf41fd5d1d24bd9",
  "source": {
    "blob": "ea6884c6a88f272e83b2f1dedf28939a17f31b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 271,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87f6588dccf41fd5d1d24bd94f44ca3adcda5cf96e946588d77510f9bb989bb6",
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

Occurrence: `declaration:f9b31eb31cbbbecd9faee10c1747c142bf0790567ebb8ff3e8f354d8bf944961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def divisionMonoid [DivisionMonoid M₂] (f : M₁ → M₂) (hf : Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n) : DivisionMonoid M₁ :=
  { hf.divInvMonoid f one mul inv div npow zpow, hf.involutiveInv f inv with
    mul_inv_rev := fun x y => hf <| by erw [inv, mul, mul_inv_rev, mul, inv, inv],
    inv_eq_of_mul := fun x y h => hf <| by
      erw [inv, inv_eq_of_mul_eq_one_right (by erw [← mul, h, one])] }
#align function.injective.division_monoid Function.Injective.divisionMonoid
#align function.injective.subtraction_monoid Function.Injective.subtractionMonoid

/-- A type endowed with `1`, `*`, `⁻¹`, and `/` is a `DivisionCommMonoid` if it admits an
injective map that preserves `1`, `*`, `⁻¹`, and `/` to a `DivisionCommMonoid`.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible) subtractionCommMonoid
"A type endowed with `0`, `+`, unary `-`, and binary
`-` is a `SubtractionCommMonoid` if it admits an injective map that preserves `0`, `+`, unary `-`,
and binary `-` to a `SubtractionCommMonoid`. This version takes custom `nsmul` and `zsmul` as
`[SMul ℕ M₁]` and `[SMul ℤ M₁]` arguments."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea6884c6a88f272e83b2f1dedf28939a17f31b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
