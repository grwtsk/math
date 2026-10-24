# Function.Injective.divisionRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02e08aeb62c7590d911bd3036a1ac9ebc7424fce5c502da8fd41accedefbf37b",
  "kind": "def",
  "lexical_name": "Function.Injective.divisionRing",
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
  "slug": "function-injective-divisionring--bfc999cb81505498144048b1",
  "source": {
    "blob": "0891cab5b04a95977573cf609d82e8a780cae533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 307,
    "path": "GRWTSK/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfc999cb81505498144048b164337a578d56c4e3a7fb239e89cd06e2944f896e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02e08aeb62c7590d911bd3036a1ac9ebc7424fce5c502da8fd41accedefbf37b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Function.Injective.divisionRing [DivisionRing K] {K'} [Zero K'] [One K'] [Add K']
    [Mul K'] [Neg K'] [Sub K'] [Inv K'] [Div K'] [SMul ℕ K'] [SMul ℤ K'] [SMul ℚ K']
    [Pow K' ℕ] [Pow K' ℤ] [NatCast K'] [IntCast K'] [RatCast K'] (f : K' → K) (hf : Injective f)
    (zero : f 0 = 0) (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y)
    (mul : ∀ x y, f (x * y) = f x * f y) (neg : ∀ x, f (-x) = -f x)
    (sub : ∀ x y, f (x - y) = f x - f y) (inv : ∀ x, f x⁻¹ = (f x)⁻¹)
    (div : ∀ x y, f (x / y) = f x / f y) (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x)
    (zsmul : ∀ (x) (n : ℤ), f (n • x) = n • f x) (qsmul : ∀ (x) (n : ℚ), f (n • x) = n • f x)
    (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) (zpow : ∀ (x) (n : ℤ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) (int_cast : ∀ n : ℤ, f n = n) (rat_cast : ∀ n : ℚ, f n = n) :
    DivisionRing K' :=
  { hf.groupWithZero f zero one mul inv div npow zpow,
    hf.ring f zero one add mul neg sub nsmul zsmul npow nat_cast int_cast with
    ratCast := Rat.cast,
    ratCast_mk := fun a b h1 h2 ↦
      hf
        (by
          erw [rat_cast, mul, inv, int_cast, nat_cast]
          exact DivisionRing.ratCast_mk a b h1 h2),
    qsmul := (· • ·), qsmul_eq_mul' := fun a x ↦ hf (by erw [qsmul, mul, Rat.smul_def, rat_cast]) }
#align function.injective.division_ring Function.Injective.divisionRing

-- See note [reducible non-instances]
/-- Pullback a `Field` along an injective function. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd0c423d1f3c918a3bb3217dac003aa9bcad5b9c0ad1dd9c41cb97516022c41f9.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0891cab5b04a95977573cf609d82e8a780cae533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
