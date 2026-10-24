# selfZPow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e496c7-1f70-f2fa-c2b5-2122cc107aaa",
  "kind": "theorem",
  "lexical_name": "selfZPow_add",
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
  "slug": "selfzpow-add--c91a802cb9f441b009553e30",
  "source": {
    "blob": "6390d7d1143f17e5b87af7931b03766592d5d8ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 515,
    "path": "GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91a802cb9f441b009553e304a03c47985460aac2a01c0ae291aa2a14d8c9fe5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e496c7-1f70-f2fa-c2b5-2122cc107aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfZPow_add {n m : ℤ} : selfZPow x B (n + m) = selfZPow x B n * selfZPow x B m := by
  rcases le_or_lt 0 n with hn | hn <;> rcases le_or_lt 0 m with hm | hm
  · rw [selfZPow_of_nonneg _ _ hn, selfZPow_of_nonneg _ _ hm,
      selfZPow_of_nonneg _ _ (add_nonneg hn hm), Int.natAbs_add_of_nonneg hn hm, pow_add]
  · have : n + m = n.natAbs - m.natAbs := by
      rw [Int.natAbs_of_nonneg hn, Int.ofNat_natAbs_of_nonpos hm.le, sub_neg_eq_add]
    rw [selfZPow_of_nonneg _ _ hn, selfZPow_of_neg _ _ hm, this, selfZPow_sub_natCast,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow]
  · have : n + m = m.natAbs - n.natAbs := by
      rw [Int.natAbs_of_nonneg hm, Int.ofNat_natAbs_of_nonpos hn.le, sub_neg_eq_add, add_comm]
    rw [selfZPow_of_nonneg _ _ hm, selfZPow_of_neg _ _ hn, this, selfZPow_sub_natCast,
      IsLocalization.mk'_eq_mul_mk'_one, map_pow, mul_comm]
  · rw [selfZPow_of_neg _ _ hn, selfZPow_of_neg _ _ hm, selfZPow_of_neg _ _ (add_neg hn hm),
      Int.natAbs_add_of_nonpos hn.le hm.le, ← mk'_mul, one_mul]
    congr
    ext
    simp [pow_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6519615c4aab84262dd3ef52c5605d5fcd06238d381a77b9bbd432e778bfdcce.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6390d7d1143f17e5b87af7931b03766592d5d8ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
