# descPochhammer_smeval_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12abc82b-0080-c275-2d5f-7adc95c46eaf",
  "kind": "theorem",
  "lexical_name": "descPochhammer_smeval_add",
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
  "slug": "descpochhammer-smeval-add--52ea68afc38e12df3ddd3107",
  "source": {
    "blob": "bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 473,
    "path": "GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ea68afc38e12df3ddd3107ac063d63cc5f8cc6eda683c8e18fe9ecda297e70",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12abc82b-0080-c275-2d5f-7adc95c46eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_smeval_add [Ring R] {r s : R} (k : ℕ) (h : Commute r s) :
    (descPochhammer ℤ k).smeval (r + s) = ∑ ij ∈ antidiagonal k,
    Nat.choose k ij.1 * ((descPochhammer ℤ ij.1).smeval r * (descPochhammer ℤ ij.2).smeval s) := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [descPochhammer_succ_right, mul_comm, smeval_mul, sum_antidiagonal_choose_succ_mul
      fun i j => ((descPochhammer ℤ i).smeval r * (descPochhammer ℤ j).smeval s),
      ← sum_add_distrib, smeval_sub, smeval_X, smeval_natCast, pow_zero, pow_one, ih, mul_sum]
    refine sum_congr rfl ?_
    intro ij hij -- try to move descPochhammers to right, gather multipliers.
    have hdx : (descPochhammer ℤ ij.1).smeval r * (X - (ij.2 : ℤ[X])).smeval s =
        (X - (ij.2 : ℤ[X])).smeval s * (descPochhammer ℤ ij.1).smeval r := by
      refine (commute_iff_eq ((descPochhammer ℤ ij.1).smeval r)
        ((X - (ij.2 : ℤ[X])).smeval s)).mp ?_
      exact smeval_commute ℤ (descPochhammer ℤ ij.1) (X - (ij.2 : ℤ[X])) h
    rw [descPochhammer_succ_right, mul_comm, smeval_mul, descPochhammer_succ_right, mul_comm,
      smeval_mul, ← mul_assoc ((descPochhammer ℤ ij.1).smeval r), hdx]
    simp only [mul_assoc _ ((descPochhammer ℤ ij.1).smeval r) _,
      ← mul_assoc _ _ (((descPochhammer ℤ ij.1).smeval r) * _)]
    have hl : (r + s - k • 1) * (k.choose ij.1) = (k.choose ij.1) * (X - (ij.2 : ℤ[X])).smeval s +
        ↑(k.choose ij.2) * (X - (ij.1 : ℤ[X])).smeval r := by
      simp only [smeval_sub, smeval_X, pow_one, smeval_natCast, pow_zero, ← mul_sub]
      rw [← Nat.choose_symm_of_eq_add (List.Nat.mem_antidiagonal.mp hij).symm,
        (List.Nat.mem_antidiagonal.mp hij).symm, ← mul_add, Nat.cast_comm, add_smul]
      abel_nf
    rw [hl, ← add_mul]

/-- The Chu-Vandermonde identity for binomial rings -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
