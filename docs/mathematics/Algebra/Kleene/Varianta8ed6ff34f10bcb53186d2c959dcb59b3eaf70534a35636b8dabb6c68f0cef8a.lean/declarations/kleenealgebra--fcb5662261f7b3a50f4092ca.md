# kleeneAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a5d42de26d1512628a290dbced12891df123c07a15d8df619e947f7ee6de823",
  "kind": "abbrev",
  "lexical_name": "kleeneAlgebra",
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
  "slug": "kleenealgebra--fcb5662261f7b3a50f4092ca",
  "source": {
    "blob": "9abfc687e6ad4f30a7dd7aeadb1176278c77df58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 359,
    "path": "GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcb5662261f7b3a50f4092ca7975034011c4833fa9e49f883ff1db9745c64164",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a5d42de26d1512628a290dbced12891df123c07a15d8df619e947f7ee6de823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev kleeneAlgebra [KleeneAlgebra α] [LE β] [LT β] [Zero β] [One β]
    [Add β] [Mul β] [Pow β ℕ] [SMul ℕ β] [NatCast β] [Max β] [Bot β] [KStar β] (f : β → α)
    (hf : Injective f) (le : ∀ {x y}, f x ≤ f y ↔ x ≤ y) (lt : ∀ {x y}, f x < f y ↔ x < y)
    (zero : f 0 = 0) (one : f 1 = 1)
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (n : ℕ) (x), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (natCast : ∀ n : ℕ, f n = n) (sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (bot : f ⊥ = ⊥)
    (kstar : ∀ a, f a∗ = (f a)∗) : KleeneAlgebra β where
  __ := hf.idemSemiring f le lt zero one add mul nsmul npow natCast sup bot
  one_le_kstar a := by
    rw [← le, one, kstar]
    exact one_le_kstar
  mul_kstar_le_kstar a := by
    rw [← le, mul, kstar]
    exact mul_kstar_le_kstar
  kstar_mul_le_kstar a := by
    rw [← le, mul, kstar]
    exact kstar_mul_le_kstar
  mul_kstar_le_self a b h := by
    rw [← le, mul, kstar]
    rw [← le, mul] at h
    exact mul_kstar_le_self h
  kstar_mul_le_self a b h := by
    rw [← le, mul, kstar]
    rw [← le, mul] at h
    exact kstar_mul_le_self h

end Function.Injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abfc687e6ad4f30a7dd7aeadb1176278c77df58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
