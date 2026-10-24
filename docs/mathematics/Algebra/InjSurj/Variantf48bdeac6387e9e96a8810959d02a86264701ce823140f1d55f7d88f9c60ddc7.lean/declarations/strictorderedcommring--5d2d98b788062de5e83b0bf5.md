# strictOrderedCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b180ec6b0da60a8cc8a2d04988f4e421e25f31c90b41d434cbf018f18b707cbd",
  "kind": "def",
  "lexical_name": "strictOrderedCommRing",
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
  "slug": "strictorderedcommring--5d2d98b788062de5e83b0bf5",
  "source": {
    "blob": "5ba3877c42336dffa798db4e2e188605c0002b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 152,
    "path": "GRWTSK/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d2d98b788062de5e83b0bf56b206cc5063d932ba02748c92ae70b570d8feb36",
  "verification": {
    "reference": "docs/verification/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b180ec6b0da60a8cc8a2d04988f4e421e25f31c90b41d434cbf018f18b707cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def strictOrderedCommRing [StrictOrderedCommRing α] [Zero β] [One β] [Add β] [Mul β]
    [Neg β] [Sub β] [Pow β ℕ] [SMul ℕ β] [SMul ℤ β] [NatCast β] [IntCast β] (f : β → α)
    (hf : Injective f) (zero : f 0 = 0) (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y)
    (mul : ∀ x y, f (x * y) = f x * f y) (neg : ∀ x, f (-x) = -f x)
    (sub : ∀ x y, f (x - y) = f x - f y) (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x)
    (zsmul : ∀ (x) (n : ℤ), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (nat_cast : ∀ n : ℕ, f n = n) (int_cast : ∀ n : ℤ, f n = n) : StrictOrderedCommRing β :=
  { hf.strictOrderedRing f zero one add mul neg sub nsmul zsmul npow nat_cast int_cast,
    hf.commRing f zero one add mul neg sub nsmul zsmul npow nat_cast int_cast with }
#align function.injective.strict_ordered_comm_ring Function.Injective.strictOrderedCommRing

-- See note [reducible non-instances]
/-- Pullback a `LinearOrderedSemiring` under an injective map. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variantf48bdeac6387e9e96a8810959d02a86264701ce823140f1d55f7d88f9c60ddc7.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba3877c42336dffa798db4e2e188605c0002b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
