# divInvMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57d3c16372598d181d8559f6fd14bcb45d42f3f6b37594d14f3b85f00316e83d",
  "kind": "abbrev",
  "lexical_name": "divInvMonoid",
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
  "slug": "divinvmonoid--d624afedddf02ba3bea26afe",
  "source": {
    "blob": "8b4d81026a7c5e40ca912aea33b3a918edc5e0b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 236,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d624afedddf02ba3bea26afe3da4e9467822fbd4068b2c8f5ab35c08b04f04ea",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57d3c16372598d181d8559f6fd14bcb45d42f3f6b37594d14f3b85f00316e83d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev divInvMonoid [DivInvMonoid M₂] (f : M₁ → M₂) (hf : Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n) : DivInvMonoid M₁ :=
  { hf.monoid f one mul npow, ‹Inv M₁›, ‹Div M₁› with
    zpow := fun n x => x ^ n,
    zpow_zero' := fun x => hf <| by rw [zpow, zpow_zero, one],
    zpow_succ' := fun n x => hf <| by rw [zpow, mul, zpow_natCast, pow_succ, zpow, zpow_natCast],
    zpow_neg' := fun n x => hf <| by rw [zpow, zpow_negSucc, inv, zpow, zpow_natCast],
    div_eq_mul_inv := fun x y => hf <| by rw [div, mul, inv, div_eq_mul_inv] }

/-- A type endowed with `1`, `*`, `⁻¹`, and `/` is a `DivInvOneMonoid` if it admits an injective
map that preserves `1`, `*`, `⁻¹`, and `/` to a `DivInvOneMonoid`. See note
[reducible non-instances]. -/
@[to_additive
"A type endowed with `0`, `+`, unary `-`, and binary `-` is a
`SubNegZeroMonoid` if it admits an injective map that preserves `0`, `+`, unary `-`, and binary
`-` to a `SubNegZeroMonoid`. This version takes custom `nsmul` and `zsmul` as `[SMul ℕ M₁]` and
`[SMul ℤ M₁]` arguments."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant674469a730bc6f8723779ed09ced3837059a4eba935b3841fd2c3847c9769802.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4d81026a7c5e40ca912aea33b3a918edc5e0b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
