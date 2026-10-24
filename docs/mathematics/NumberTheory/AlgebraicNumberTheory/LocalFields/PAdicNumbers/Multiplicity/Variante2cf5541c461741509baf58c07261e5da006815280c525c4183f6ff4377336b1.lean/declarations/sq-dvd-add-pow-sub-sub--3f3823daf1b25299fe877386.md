# sq_dvd_add_pow_sub_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7e268a2-d3f3-2358-e46a-f3839b65e2c2",
  "kind": "theorem",
  "lexical_name": "sq_dvd_add_pow_sub_sub",
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
  "slug": "sq-dvd-add-pow-sub-sub--3f3823daf1b25299fe877386",
  "source": {
    "blob": "f125784829cceb34a3629adda27d0ec3aec075bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f3823daf1b25299fe877386a30e3a06d078481f7991a2efe434efbfd1943b38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e268a2-d3f3-2358-e46a-f3839b65e2c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_dvd_add_pow_sub_sub (p x : R) (n : ℕ) :
    p ^ 2 ∣ (x + p) ^ n - x ^ (n - 1) * p * n - x ^ n := by
  cases' n with n n
  · simp only [pow_zero, Nat.cast_zero, sub_zero, sub_self, dvd_zero, Nat.zero_eq, mul_zero]
  · simp only [Nat.succ_sub_succ_eq_sub, tsub_zero, Nat.cast_succ, add_pow, Finset.sum_range_succ,
      Nat.choose_self, Nat.succ_sub _, tsub_self, pow_one, Nat.choose_succ_self_right, pow_zero,
      mul_one, Nat.cast_zero, zero_add, Nat.succ_eq_add_one, add_tsub_cancel_left]
    suffices p ^ 2 ∣ ∑ i : ℕ in range n, x ^ i * p ^ (n + 1 - i) * ↑((n + 1).choose i) by
      convert this; abel
    · apply Finset.dvd_sum
      intro y hy
      calc
        p ^ 2 ∣ p ^ (n + 1 - y) :=
          pow_dvd_pow p (le_tsub_of_add_le_left (by linarith [Finset.mem_range.mp hy]))
        _ ∣ x ^ y * p ^ (n + 1 - y) * ↑((n + 1).choose y) :=
          dvd_mul_of_dvd_left (dvd_mul_left _ _) _
#align sq_dvd_add_pow_sub_sub sq_dvd_add_pow_sub_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Multiplicity/Variante2cf5541c461741509baf58c07261e5da006815280c525c4183f6ff4377336b1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f125784829cceb34a3629adda27d0ec3aec075bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
