# strictOrderedSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64462974d950c48efe7a94c3e09d72b3dd7a916cc9ac7523ba800be0380f55ed",
  "kind": "def",
  "lexical_name": "strictOrderedSemiring",
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
  "slug": "strictorderedsemiring--e3beb0e6ea2438ac51d96221",
  "source": {
    "blob": "c7fd6f3cdbedb2b99450165051f03e68e7816024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3beb0e6ea2438ac51d96221442947f7a5289f70105b45f9fdd7b927cf05451b",
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

Occurrence: `declaration:64462974d950c48efe7a94c3e09d72b3dd7a916cc9ac7523ba800be0380f55ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def strictOrderedSemiring [StrictOrderedSemiring α] [Zero β] [One β] [Add β] [Mul β]
    [Pow β ℕ] [SMul ℕ β] [NatCast β] (f : β → α) (hf : Injective f) (zero : f 0 = 0)
    (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) : StrictOrderedSemiring β :=
  { hf.orderedCancelAddCommMonoid f zero add nsmul,
    hf.orderedSemiring f zero one add mul nsmul npow nat_cast, pullback_nonzero f zero one with
    mul_lt_mul_of_pos_left := fun a b c h hc =>
      show f (c * a) < f (c * b) by
        simpa only [mul, zero] using mul_lt_mul_of_pos_left ‹f a < f b› (by rwa [← zero]),
    mul_lt_mul_of_pos_right := fun a b c h hc =>
      show f (a * c) < f (b * c) by
        simpa only [mul, zero] using mul_lt_mul_of_pos_right ‹f a < f b› (by rwa [← zero]) }
#align function.injective.strict_ordered_semiring Function.Injective.strictOrderedSemiring

-- See note [reducible non-instances]
/-- Pullback a `strictOrderedCommSemiring` under an injective map. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fd6f3cdbedb2b99450165051f03e68e7816024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
