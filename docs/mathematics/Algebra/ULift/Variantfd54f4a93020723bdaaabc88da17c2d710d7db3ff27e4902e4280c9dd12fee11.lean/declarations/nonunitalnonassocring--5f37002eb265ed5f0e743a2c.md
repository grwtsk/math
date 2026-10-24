# nonUnitalNonAssocRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c95b541f78de8c323dd7e8a3db9f79f61418c12010126a9877e8e7508a2a740",
  "kind": "instance",
  "lexical_name": "nonUnitalNonAssocRing",
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
  "slug": "nonunitalnonassocring--5f37002eb265ed5f0e743a2c",
  "source": {
    "blob": "d61e43c0ee6e8885630724936350319b7510843d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 79,
    "path": "GRWTSK/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f37002eb265ed5f0e743a2c785ab6a0fa82cc22d9eba7c08f318f80c7a78940",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c95b541f78de8c323dd7e8a3db9f79f61418c12010126a9877e8e7508a2a740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalNonAssocRing [NonUnitalNonAssocRing R] : NonUnitalNonAssocRing (ULift R) :=
  { zero := (0 : ULift R), add := (· + ·), mul := (· * ·), sub := Sub.sub, neg := Neg.neg,
    nsmul := AddMonoid.nsmul, zsmul := SubNegMonoid.zsmul, add_assoc, zero_add, add_zero,
    neg_add_cancel, add_comm, left_distrib, right_distrib, zero_mul, mul_zero, sub_eq_add_neg,
    nsmul_zero := fun _ => AddMonoid.nsmul_zero _,
    nsmul_succ := fun _ _ => AddMonoid.nsmul_succ _ _,
    zsmul_zero' := SubNegMonoid.zsmul_zero', zsmul_succ' := SubNegMonoid.zsmul_succ',
    zsmul_neg' := SubNegMonoid.zsmul_neg' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variantfd54f4a93020723bdaaabc88da17c2d710d7db3ff27e4902e4280c9dd12fee11.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61e43c0ee6e8885630724936350319b7510843d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
