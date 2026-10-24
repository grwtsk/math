# prod_X_add_C_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76893860-673a-ed05-15af-3e5a0893a7ad",
  "kind": "theorem",
  "lexical_name": "prod_X_add_C_coeff",
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
  "slug": "prod-x-add-c-coeff--d5e4ffe2953623f9f8b99263",
  "source": {
    "blob": "7f730c0b9b103ca720f7504c4dbb6bbaf32d46a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e4ffe2953623f9f8b9926344836313078cbac3b78a341d1c94383a8eb3af92",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76893860-673a-ed05-15af-3e5a0893a7ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_X_add_C_coeff (s : Multiset R) {k : ℕ} (h : k ≤ Multiset.card s) :
    (s.map fun r => X + C r).prod.coeff k = s.esymm (Multiset.card s - k) := by
  convert Polynomial.ext_iff.mp (prod_X_add_C_eq_sum_esymm s) k using 1
  simp_rw [finset_sum_coeff, coeff_C_mul_X_pow]
  rw [Finset.sum_eq_single_of_mem (Multiset.card s - k) _]
  · rw [if_pos (Nat.sub_sub_self h).symm]
  · intro j hj1 hj2
    suffices k ≠ card s - j by rw [if_neg this]
    intro hn
    rw [hn, Nat.sub_sub_self (Nat.lt_succ_iff.mp (Finset.mem_range.mp hj1))] at hj2
    exact Ne.irrefl hj2
  · rw [Finset.mem_range]
    exact Nat.lt_succ_of_le (Nat.sub_le (Multiset.card s) k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Vieta/Variant010bbb0611c890e1238e35a58a53bb85b614ae6fa86becbbbfadf40bafa8704f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f730c0b9b103ca720f7504c4dbb6bbaf32d46a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
