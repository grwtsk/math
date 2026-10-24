# valMinAbs_natAbs_eq_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:786c8e53-0218-28f2-ac0d-d4ee87a3e98d",
  "kind": "theorem",
  "lexical_name": "valMinAbs_natAbs_eq_min",
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
  "slug": "valminabs-natabs-eq-min--7b9e92d9aaa7ebc144497cfb",
  "source": {
    "blob": "c1d2973d2dd49d6121053b8c3457cdc768a6666c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1053,
    "line": 1035,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b9e92d9aaa7ebc144497cfb6287dd5a08c50f8a80894df19c1b1b7aed9fad59",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:786c8e53-0218-28f2-ac0d-d4ee87a3e98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1035–1053.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valMinAbs_natAbs_eq_min {n : ℕ} [hpos : NeZero n] (a : ZMod n) :
    a.valMinAbs.natAbs = min a.val (n - a.val) := by
  rw [valMinAbs_def_pos]
  split_ifs with h
  · rw [Int.natAbs_ofNat]
    symm
    apply
      min_eq_left (le_trans h (le_trans (Nat.half_le_of_sub_le_half _) (Nat.sub_le_sub_left n h)))
    rw [Nat.sub_sub_self (Nat.div_le_self _ _)]
  · rw [← Int.natAbs_neg, neg_sub, ← Nat.cast_sub a.val_le]
    symm
    apply
      min_eq_right
        (le_trans (le_trans (Nat.sub_le_sub_left n (lt_of_not_ge h)) (Nat.le_half_of_half_lt_sub _))
          (le_of_not_ge h))
    rw [Nat.sub_sub_self (Nat.div_lt_self (lt_of_le_of_ne' (Nat.zero_le _) hpos.1) one_lt_two)]
    apply Nat.lt_succ_self
#align zmod.val_min_abs_nat_abs_eq_min ZMod.valMinAbs_natAbs_eq_min

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb206b774ad66eedd213e02e735b4e4c581517e4bf0337faea3fd4e40c54a2e5d.lean#L1035).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d2973d2dd49d6121053b8c3457cdc768a6666c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
