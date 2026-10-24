# Function.Injective.orderedCancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6b498e1ba1bdb23107d1c8a0279a574c3f1c2bb716debebf93f5302371c3935",
  "kind": "def",
  "lexical_name": "Function.Injective.orderedCancelCommMonoid",
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
  "slug": "function-injective-orderedcancelcommmonoid--8029c3bcdcbc97643cdc5e3c",
  "source": {
    "blob": "53333a45ca3aec0338d1b667d1594caac0beaf86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8029c3bcdcbc97643cdc5e3cb97727ca16341428d622cc498f00f7fd715bbfff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6b498e1ba1bdb23107d1c8a0279a574c3f1c2bb716debebf93f5302371c3935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Function.Injective.orderedCancelCommMonoid {β : Type*} [One β] [Mul β] [Pow β ℕ] (f : β → α)
    (hf : Function.Injective f) (one : f 1 = 1) (mul : ∀ x y, f (x * y) = f x * f y)
    (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) : OrderedCancelCommMonoid β :=
  { hf.orderedCommMonoid f one mul npow with
    le_of_mul_le_mul_left := fun a b c (bc : f (a * b) ≤ f (a * c)) ↦
      (mul_le_mul_iff_left (f a)).mp (by rwa [← mul, ← mul]) }
#align function.injective.ordered_cancel_comm_monoid Function.Injective.orderedCancelCommMonoid
#align function.injective.ordered_cancel_add_comm_monoid Function.Injective.orderedCancelAddCommMonoid

end OrderedCancelCommMonoid

section LinearOrderedCancelCommMonoid

variable [LinearOrderedCancelCommMonoid α]

/-- Pullback a `LinearOrderedCancelCommMonoid` under an injective map.
See note [reducible non-instances]. -/
@[to_additive (attr := reducible) Function.Injective.linearOrderedCancelAddCommMonoid
    "Pullback a `LinearOrderedCancelAddCommMonoid` under an injective map."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantda1c42fa71e7341064c11471449b9c13205d9fd58a4a0d3c072fa4db771cdc3b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53333a45ca3aec0338d1b667d1594caac0beaf86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
