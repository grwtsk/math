# orderedSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c4af8e0269a9f412737a977c3f7e9026998a760f13e5fa7b76336e549eb480b",
  "kind": "def",
  "lexical_name": "orderedSemiring",
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
  "slug": "orderedsemiring--9d5f2d74505326ca5bed279c",
  "source": {
    "blob": "c7fd6f3cdbedb2b99450165051f03e68e7816024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 29,
    "path": "GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d5f2d74505326ca5bed279c95de2ffb5dfda41d1071c371722133d2650431dd",
  "verification": {
    "reference": "docs/verification/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c4af8e0269a9f412737a977c3f7e9026998a760f13e5fa7b76336e549eb480b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def orderedSemiring [OrderedSemiring α] [Zero β] [One β] [Add β] [Mul β] [Pow β ℕ]
    [SMul ℕ β] [NatCast β] (f : β → α) (hf : Injective f) (zero : f 0 = 0) (one : f 1 = 1)
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) : OrderedSemiring β :=
  { hf.orderedAddCommMonoid f zero add nsmul,
    hf.semiring f zero one add mul nsmul npow nat_cast with
    zero_le_one := show f 0 ≤ f 1 by simp only [zero, one, zero_le_one],
    mul_le_mul_of_nonneg_left := fun a b c h hc =>
      show f (c * a) ≤ f (c * b) by
        rw [mul, mul]
        refine' mul_le_mul_of_nonneg_left h _
        rwa [← zero],
    mul_le_mul_of_nonneg_right := fun a b c h hc =>
      show f (a * c) ≤ f (b * c) by
        rw [mul, mul]
        refine' mul_le_mul_of_nonneg_right h _
        rwa [← zero] }
#align function.injective.ordered_semiring Function.Injective.orderedSemiring

-- See note [reducible non-instances]
/-- Pullback an `OrderedCommSemiring` under an injective map. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fd6f3cdbedb2b99450165051f03e68e7816024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
