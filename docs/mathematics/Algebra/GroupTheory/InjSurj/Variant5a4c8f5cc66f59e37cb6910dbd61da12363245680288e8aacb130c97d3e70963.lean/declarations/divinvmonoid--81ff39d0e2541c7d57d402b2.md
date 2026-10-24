# divInvMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fd406d1d0f8e0cf15efd9f93284643655ed88a3b82e66970bb7202b5e65742b",
  "kind": "def",
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
  "slug": "divinvmonoid--81ff39d0e2541c7d57d402b2",
  "source": {
    "blob": "9b195f0645776128c58669d3e3b0a2b078f0e817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 488,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ff39d0e2541c7d57d402b2acbeb6a2b85a7cbf274b91060047d5e0f2cf0fdf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fd406d1d0f8e0cf15efd9f93284643655ed88a3b82e66970bb7202b5e65742b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def divInvMonoid [DivInvMonoid M₁] (f : M₁ → M₂) (hf : Surjective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n) : DivInvMonoid M₂ :=
  { hf.monoid f one mul npow, ‹Div M₂›, ‹Inv M₂› with
    zpow := fun n x => x ^ n,
    zpow_zero' := hf.forall.2 fun x => by dsimp only; erw [← zpow, zpow_zero, ← one],
    zpow_succ' := fun n => hf.forall.2 fun x => by
      dsimp only
      erw [← zpow, ← zpow, zpow_ofNat, zpow_ofNat, pow_succ, ← mul],
    zpow_neg' := fun n => hf.forall.2 fun x => by
      dsimp only
      erw [← zpow, ← zpow, zpow_negSucc, zpow_ofNat, inv],
    div_eq_mul_inv := hf.forall₂.2 fun x y => by erw [← inv, ← mul, ← div, div_eq_mul_inv] }
#align function.surjective.div_inv_monoid Function.Surjective.divInvMonoid
#align function.surjective.sub_neg_monoid Function.Surjective.subNegMonoid

/-- A type endowed with `1`, `*` and `⁻¹` is a group, if it admits a surjective map that preserves
`1`, `*` and `⁻¹` to a group. See note [reducible non-instances]. -/
@[to_additive (attr := reducible)
"A type endowed with `0` and `+` is an additive group, if it admits a
surjective map that preserves `0` and `+` to an additive group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b195f0645776128c58669d3e3b0a2b078f0e817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
