# CommRing.toGrindCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9c5cc82bbecbdb5232af7cbd8f18b95947e5f48061860b06c152f063b8f4bb5",
  "kind": "instance",
  "lexical_name": "CommRing.toGrindCommRing",
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
  "slug": "commring-togrindcommring--22e7385aab3e11e897be1087",
  "source": {
    "blob": "9fb6609c53904c214ef539c56f8341e4a9e41ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 25,
    "path": "GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e7385aab3e11e897be1087d60600b2296382f9abb928c1ab9db21bca80dbb2",
  "verification": {
    "reference": "docs/verification/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9c5cc82bbecbdb5232af7cbd8f18b95947e5f48061860b06c152f063b8f4bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommRing.toGrindCommRing [s : CommRing α] :
    Grind.CommRing α :=
  { s with
    ofNat | 0 | 1 | n + 2 => inferInstance
    natCast := inferInstance
    intCast := inferInstance
    add_zero := by simp [add_zero]
    neg_add_cancel := by simp [neg_add_cancel]
    mul_one := by simp [mul_one]
    zero_mul := by simp [zero_mul]
    pow_zero := by simp
    pow_succ := by simp [pow_succ]
    ofNat_eq_natCast
    | 0 => Nat.cast_zero.symm
    | 1 => Nat.cast_one.symm
    | n + 2 => rfl
    ofNat_succ
    | 0 => by simp [zero_add]
    | 1 => by
      show Nat.cast 2 = 1 + 1
      rw [one_add_one_eq_two]
      rfl
    | n + 2 => by
      show Nat.cast (n + 2 + 1) = Nat.cast (n + 2) + 1
      rw [← AddMonoidWithOne.natCast_succ]
    intCast_ofNat
    | 0 => Int.cast_zero
    | 1 => Int.cast_one
    | n + 2 => Int.cast_ofNat _
    intCast_neg := Int.cast_neg }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GrindInstances/Variant20d6fc24ccf4f16ab919d7d39dbb3bf94b9ca14a74b531deabf5ea369331ff8f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fb6609c53904c214ef539c56f8341e4a9e41ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
