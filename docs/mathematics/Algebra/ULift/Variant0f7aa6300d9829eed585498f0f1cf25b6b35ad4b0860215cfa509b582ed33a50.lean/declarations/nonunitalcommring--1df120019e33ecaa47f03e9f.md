# nonUnitalCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:575c127a8c75a8d96483c82a2cbf7ba25c31ac8f9125a8ebb3a0ac8e0a127863",
  "kind": "instance",
  "lexical_name": "nonUnitalCommRing",
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
  "slug": "nonunitalcommring--1df120019e33ecaa47f03e9f",
  "source": {
    "blob": "ac66cd7129530a4cb80065f26ad25078a41b05b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1df120019e33ecaa47f03e9febd3533312c1f0b5243c6bb4efea0a45a91f2bd3",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:575c127a8c75a8d96483c82a2cbf7ba25c31ac8f9125a8ebb3a0ac8e0a127863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalCommRing [NonUnitalCommRing α] : NonUnitalCommRing (ULift α) :=
  { zero := (0 : ULift α), add := (· + ·), mul := (· * ·), sub := Sub.sub, neg := Neg.neg,
    nsmul := AddMonoid.nsmul, zsmul := SubNegMonoid.zsmul, zero_mul, add_assoc, zero_add, add_zero,
    mul_zero, left_distrib, right_distrib, add_comm, mul_assoc, mul_comm,
    nsmul_zero := fun _ => AddMonoid.nsmul_zero _, add_left_neg,
    nsmul_succ := fun _ _ => AddMonoid.nsmul_succ _ _, sub_eq_add_neg,
    zsmul_zero' := SubNegMonoid.zsmul_zero',
    zsmul_succ' := SubNegMonoid.zsmul_succ',
    zsmul_neg' := SubNegMonoid.zsmul_neg'.. }
#align ulift.non_unital_comm_ring ULift.nonUnitalCommRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac66cd7129530a4cb80065f26ad25078a41b05b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
