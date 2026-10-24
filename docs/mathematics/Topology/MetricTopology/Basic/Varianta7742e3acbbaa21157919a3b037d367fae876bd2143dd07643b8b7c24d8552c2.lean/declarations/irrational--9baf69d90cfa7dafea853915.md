# irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22ba638c-60c0-c0c5-7487-edc39e07289a",
  "kind": "theorem",
  "lexical_name": "irrational",
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
  "slug": "irrational--9baf69d90cfa7dafea853915",
  "source": {
    "blob": "fea76dda3d07936f15948c4c659444760344b9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 47,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9baf69d90cfa7dafea8539152d1535bfaa4bdec5d56e0a46ff11f6816d0babb0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22ba638c-60c0-c0c5-7487-edc39e07289a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem irrational {x : ℝ} (h : Liouville x) : Irrational x := by
  -- By contradiction, `x = a / b`, with `a ∈ ℤ`, `0 < b ∈ ℕ` is a Liouville number,
  rintro ⟨⟨a, b, bN0, cop⟩, rfl⟩
  -- clear up the mess of constructions of rationals
  rw [Rat.cast_mk', ← div_eq_mul_inv] at h
  -- Since `a / b` is a Liouville number, there are `p, q ∈ ℤ`, with `q1 : 1 < q`,
  -- `a0 : a / b ≠ p / q` and `a1 : |a / b - p / q| < 1 / q ^ (b + 1)`
  rcases h (b + 1) with ⟨p, q, q1, a0, a1⟩
  -- A few useful inequalities
  have qR0 : (0 : ℝ) < q := Int.cast_pos.mpr (zero_lt_one.trans q1)
  have b0 : (b : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr bN0
  have bq0 : (0 : ℝ) < b * q := mul_pos (Nat.cast_pos.mpr bN0.bot_lt) qR0
  -- At a1, clear denominators...
  replace a1 : |a * q - b * p| * q ^ (b + 1) < b * q
  · rw [div_sub_div _ _ b0 qR0.ne', abs_div, div_lt_div_iff (abs_pos.mpr bq0.ne') (pow_pos qR0 _),
      abs_of_pos bq0, one_mul] at a1
    exact_mod_cast a1
  -- At a0, clear denominators...
  replace a0 : a * q - ↑b * p ≠ 0;
  · rw [Ne.def, div_eq_div_iff b0 qR0.ne', mul_comm (p : ℝ), ← sub_eq_zero] at a0
    exact_mod_cast a0
  -- Actually, `q` is a natural number
  lift q to ℕ using (zero_lt_one.trans q1).le
  -- Looks innocuous, but we now have an integer with non-zero absolute value: this is at
  -- least one away from zero.  The gain here is what gets the proof going.
  have ap : 0 < |a * ↑q - ↑b * p| := abs_pos.mpr a0
  -- Actually, the absolute value of an integer is a natural number
  lift |a * ↑q - ↑b * p| to ℕ using abs_nonneg (a * ↑q - ↑b * p) with e he
  -- At a1, revert to natural numbers
  rw [← Int.ofNat_mul, ← Int.coe_nat_pow, ← Int.ofNat_mul, Int.ofNat_lt] at a1
  -- Recall this is by contradiction: we obtained the inequality `b * q ≤ x * q ^ (b + 1)`, so
  -- we are done.
  exact not_le.mpr a1 (Nat.mul_lt_mul_pow_succ (Int.coe_nat_pos.mp ap) (Int.ofNat_lt.mp q1)).le
#align liouville.irrational Liouville.irrational

open Polynomial Metric Set Real RingHom

open scoped Polynomial

/-- Let `Z, N` be types, let `R` be a metric space, let `α : R` be a point and let
`j : Z → N → R` be a function.  We aim to estimate how close we can get to `α`, while staying
in the image of `j`.  The points `j z a` of `R` in the image of `j` come with a "cost" equal to
`d a`.  As we get closer to `α` while staying in the image of `j`, we are interested in bounding
the quantity `d a * dist α (j z a)` from below by a strictly positive amount `1 / A`: the intuition
is that approximating well `α` with the points in the image of `j` should come at a high cost.  The
hypotheses on the function `f : R → R` provide us with sufficient conditions to ensure our goal.
The first hypothesis is that `f` is Lipschitz at `α`: this yields a bound on the distance.
The second hypothesis is specific to the Liouville argument and provides the missing bound
involving the cost function `d`.

This lemma collects the properties used in the proof of `exists_pos_real_of_irrational_root`.
It is stated in more general form than needed: in the intended application, `Z = ℤ`, `N = ℕ`,
`R = ℝ`, `d a = (a + 1) ^ f.nat_degree`, `j z a = z / (a + 1)`, `f ∈ ℤ[x]`, `α` is an irrational
root of `f`, `ε` is small, `M` is a bound on the Lipschitz constant of `f` near `α`, `n` is
the degree of the polynomial `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Varianta7742e3acbbaa21157919a3b037d367fae876bd2143dd07643b8b7c24d8552c2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea76dda3d07936f15948c4c659444760344b9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
