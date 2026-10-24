# hasDistribNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24e70f356f5582bf4dceb44a7fd8b71fb241931f18302167c099cea6c60f397e",
  "kind": "def",
  "lexical_name": "hasDistribNeg",
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
  "slug": "hasdistribneg--a83a0fbedd72c6ecfdb8e793",
  "source": {
    "blob": "522713d023d0a4509e13a11eb1413cd5f72db447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 610,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a83a0fbedd72c6ecfdb8e79362ea07e5edcc4e13ad9016dac7918c55ccc06c0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24e70f356f5582bf4dceb44a7fd8b71fb241931f18302167c099cea6c60f397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def hasDistribNeg : HasDistribNeg (AddSubmonoid R) :=
  { AddSubmonoid.involutiveNeg with
    neg := Neg.neg
    neg_mul := fun x y => by
      refine'
          le_antisymm (mul_le.2 fun m hm n hn => _)
            ((AddSubmonoid.neg_le _ _).2 <| mul_le.2 fun m hm n hn => _) <;>
        simp only [AddSubmonoid.mem_neg, ← neg_mul] at *
      · exact mul_mem_mul hm hn
      · exact mul_mem_mul (neg_mem_neg.2 hm) hn
    mul_neg := fun x y => by
      refine'
          le_antisymm (mul_le.2 fun m hm n hn => _)
            ((AddSubmonoid.neg_le _ _).2 <| mul_le.2 fun m hm n hn => _) <;>
        simp only [AddSubmonoid.mem_neg, ← mul_neg] at *
      · exact mul_mem_mul hm hn
      · exact mul_mem_mul hm (neg_mem_neg.2 hn) }
#align add_submonoid.has_distrib_neg AddSubmonoid.hasDistribNeg

scoped[Pointwise] attribute [instance] AddSubmonoid.hasDistribNeg

end NonUnitalNonAssocRing

section NonAssocSemiring

variable [NonAssocSemiring R]

/-- A `MulOneClass` structure on additive submonoids of a (possibly, non-associative) semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant0727f19a383c2b3a64d660cc0bda5fb9e0dd063ca556de5adddd939a8e17b30e.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522713d023d0a4509e13a11eb1413cd5f72db447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
