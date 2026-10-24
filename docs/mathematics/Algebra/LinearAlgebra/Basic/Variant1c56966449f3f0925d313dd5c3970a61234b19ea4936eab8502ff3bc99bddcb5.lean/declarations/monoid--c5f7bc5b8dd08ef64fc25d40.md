# monoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a8a34e654607ac6d346b838f6d923205bfc9525ea3e982197e972b9ebd6cbde",
  "kind": "instance",
  "lexical_name": "monoid",
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
  "slug": "monoid--c5f7bc5b8dd08ef64fc25d40",
  "source": {
    "blob": "b5dd863ad3b4b556472a3901a746fab5290d4bb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 613,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5f7bc5b8dd08ef64fc25d40180628661f1150c3cff243746a4924d3b4a8433d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a8a34e654607ac6d346b838f6d923205bfc9525ea3e982197e972b9ebd6cbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoid [Monoid R] [AddMonoid M] [DistribMulAction R M] [DistribMulAction Rᵐᵒᵖ M]
    [SMulCommClass R Rᵐᵒᵖ M] : Monoid (tsze R M) where
  mul_assoc := fun x y z =>
    ext (mul_assoc x.1 y.1 z.1) <|
      show
        (x.1 * y.1) •> z.2 + (x.1 •> y.2 + x.2 <• y.1) <• z.1 =
          x.1 •> (y.1 •> z.2 + y.2 <• z.1) + x.2 <• (y.1 * z.1)
        by simp_rw [smul_add, ← mul_smul, add_assoc, smul_comm, op_mul]
  npow := fun n x => x ^ n
  npow_zero := fun x => ext (pow_zero x.fst) (by simp [snd_pow_eq_sum])
  npow_succ := fun n x =>
    ext (pow_succ _ _)
      (by
        simp_rw [snd_mul, snd_pow_eq_sum, Nat.pred_succ]
        cases n
        · simp [List.range_succ]
        rw [List.sum_range_succ']
        simp only [pow_zero, op_one, Nat.sub_zero, one_smul, Nat.succ_sub_succ_eq_sub, fst_pow,
          Nat.pred_succ, List.smul_sum, List.map_map, Function.comp_def]
        simp_rw [← smul_comm (_ : R) (_ : Rᵐᵒᵖ), smul_smul, pow_succ]
        rfl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5dd863ad3b4b556472a3901a746fab5290d4bb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
