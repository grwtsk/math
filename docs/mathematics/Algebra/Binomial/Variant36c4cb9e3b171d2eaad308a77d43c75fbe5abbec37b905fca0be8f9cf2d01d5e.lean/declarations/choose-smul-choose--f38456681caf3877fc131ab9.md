# choose_smul_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc117e29-7d1a-3c08-f779-42c0c29b3100",
  "kind": "theorem",
  "lexical_name": "choose_smul_choose",
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
  "slug": "choose-smul-choose--f38456681caf3877fc131ab9",
  "source": {
    "blob": "c57269dd00db4f80d58a1c70cd0d803ddee0c7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 472,
    "path": "GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38456681caf3877fc131ab9020e8c33d3bd140d4b62177b5e807c2ed7274f45",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc117e29-7d1a-3c08-f779-42c0c29b3100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 472–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem choose_smul_choose [NatPowAssoc R] (r : R) {n k : ℕ} (hkn : k ≤ n) :
    (Nat.choose n k) • choose r n = choose r k * choose (r - k) (n - k) := by
  rw [← nsmul_right_inj (Nat.factorial_ne_zero n),
    nsmul_left_comm, ← descPochhammer_eq_factorial_smul_choose,
    ← Nat.choose_mul_factorial_mul_factorial hkn, ← smul_mul_smul_comm,
    ← descPochhammer_eq_factorial_smul_choose, mul_nsmul',
    ← descPochhammer_eq_factorial_smul_choose, smul_mul_assoc]
  nth_rw 2 [← Nat.sub_add_cancel hkn]
  rw [add_comm, ← descPochhammer_mul, smeval_mul, smeval_comp, smeval_sub, smeval_X,
    ← C_eq_natCast, smeval_C, npow_one, npow_zero, zsmul_one, Int.cast_natCast, nsmul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean#L472).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57269dd00db4f80d58a1c70cd0d803ddee0c7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
