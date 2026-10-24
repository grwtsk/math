# nonAssocRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc4e6119f0f60e3634f7e74033210427319d7dcf6e152e07c576a5a0b538e2f2",
  "kind": "instance",
  "lexical_name": "nonAssocRing",
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
  "slug": "nonassocring--c78c3c1ee33143e1f0a09fb4",
  "source": {
    "blob": "ac66cd7129530a4cb80065f26ad25078a41b05b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c78c3c1ee33143e1f0a09fb4a30d27a521137db906d6d4c9a9b3db2360313ba0",
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

Occurrence: `declaration:cc4e6119f0f60e3634f7e74033210427319d7dcf6e152e07c576a5a0b538e2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonAssocRing [NonAssocRing α] : NonAssocRing (ULift α) :=
  { zero := (0 : ULift α), one := (1 : ULift α), add := (· + ·), mul := (· * ·), sub := Sub.sub,
    neg := Neg.neg, nsmul := AddMonoid.nsmul, natCast := fun n => ULift.up n,
    intCast := fun n => ULift.up n, zsmul := SubNegMonoid.zsmul,
    intCast_ofNat := addGroupWithOne.intCast_ofNat, add_assoc, zero_add,
    add_zero, add_left_neg, add_comm, left_distrib, right_distrib, zero_mul, mul_zero, one_mul,
    mul_one, sub_eq_add_neg, nsmul_zero := fun _ => AddMonoid.nsmul_zero _,
    nsmul_succ := fun _ _ => AddMonoid.nsmul_succ _ _,
    zsmul_zero' := SubNegMonoid.zsmul_zero', zsmul_succ' := SubNegMonoid.zsmul_succ',
    zsmul_neg' := SubNegMonoid.zsmul_neg',
    natCast_zero := AddMonoidWithOne.natCast_zero, natCast_succ := AddMonoidWithOne.natCast_succ,
    intCast_negSucc := AddGroupWithOne.intCast_negSucc }
#align ulift.non_assoc_ring ULift.nonAssocRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variant0f7aa6300d9829eed585498f0f1cf25b6b35ad4b0860215cfa509b582ed33a50.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac66cd7129530a4cb80065f26ad25078a41b05b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
