# strictOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a4b98ab3849f3472e861b34c4766d264c5a00a2ec3a20130671e6fcfffdc367",
  "kind": "def",
  "lexical_name": "strictOrderedRing",
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
  "slug": "strictorderedring--84f3696bba13ba8f1e9efb5e",
  "source": {
    "blob": "c7fd6f3cdbedb2b99450165051f03e68e7816024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84f3696bba13ba8f1e9efb5e1858cf14a62701006292889bf4d2874bf8481862",
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

Occurrence: `declaration:8a4b98ab3849f3472e861b34c4766d264c5a00a2ec3a20130671e6fcfffdc367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def strictOrderedRing [StrictOrderedRing α] [Zero β] [One β] [Add β] [Mul β] [Neg β]
    [Sub β] [SMul ℕ β] [SMul ℤ β] [Pow β ℕ] [NatCast β] [IntCast β] (f : β → α)
    (hf : Injective f) (zero : f 0 = 0) (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y)
    (mul : ∀ x y, f (x * y) = f x * f y) (neg : ∀ x, f (-x) = -f x)
    (sub : ∀ x y, f (x - y) = f x - f y) (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x)
    (zsmul : ∀ (x) (n : ℤ), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) (int_cast : ∀ n : ℤ, f n = n) : StrictOrderedRing β :=
  { hf.strictOrderedSemiring f zero one add mul nsmul npow nat_cast,
    hf.ring f zero one add mul neg sub nsmul zsmul npow nat_cast int_cast with
    mul_pos := fun a b a0 b0 =>
      show f 0 < f (a * b) by
        rw [zero, mul]
        apply mul_pos <;> rwa [← zero] }
#align function.injective.strict_ordered_ring Function.Injective.strictOrderedRing

-- See note [reducible non-instances]
/-- Pullback a `StrictOrderedCommRing` under an injective map. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variant27258bbba91443c9f0a73c6cc6043808b7e54e24ec4d1a7a5a6bb08cf3a4296f.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fd6f3cdbedb2b99450165051f03e68e7816024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
