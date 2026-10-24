# centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ef3afa-d459-5b65-8e3a-2382d805559b",
  "kind": "theorem",
  "lexical_name": "centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul",
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
  "slug": "centeredmobiuslogdivisorterm-some-abs-le-log-four-mul--afdbcb80acccc7c4b4090af2",
  "source": {
    "blob": "29130ffb1b08afe4da29860f267cd0d827f700d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afdbcb80acccc7c4b4090af2979de6152fd0e9a90655b0a0c10f99b99ceb9ad2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ef3afa-d459-5b65-8e3a-2382d805559b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMobiusLogDivisorTerm_some_abs_le_log_four_mul
    {X n d : ℕ}
    (hX : 0 < X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X))
    (hd : some d ∈ centeredMobiusLogSquarefreeDivisorIndexSet n) :
    |centeredMobiusLogDivisorTerm n (some d)| ≤
      Real.log (((4 * X : ℕ) : ℝ)) := by
  have hd' :=
    some_mem_centeredMobiusLogSquarefreeDivisorIndexSet_iff.mp hd
  have hdn : d ∣ n := (Nat.mem_divisors.mp hd'.1).1
  have hn0 : 0 < n := by
    have hnI := Finset.mem_Ioc.mp hn
    omega
  have hd0 : 0 < d := Nat.pos_of_mem_divisors hd'.1
  have hq0 : 0 < n / d :=
    Nat.div_pos (Nat.le_of_dvd hn0 hdn) hd0
  have hq_le : n / d ≤ 4 * X :=
    (Nat.div_le_self n d).trans (Finset.mem_Ioc.mp hn).2
  have hlog0 : 0 ≤ Real.log ((n / d : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hq0.ne')
  have hlog_le :
      Real.log ((n / d : ℕ) : ℝ) ≤
        Real.log (((4 * X : ℕ) : ℝ)) := by
    exact Real.log_le_log
      (by exact_mod_cast hq0)
      (by exact_mod_cast hq_le)
  have hmu : |mobiusReal d| ≤ 1 := by
    unfold mobiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
  rw [centeredMobiusLogDivisorTerm_some, abs_mul,
    abs_of_nonneg hlog0]
  calc
    |mobiusReal d| * Real.log ((n / d : ℕ) : ℝ)
      ≤ 1 * Real.log ((n / d : ℕ) : ℝ) :=
        mul_le_mul_of_nonneg_right hmu hlog0
    _ ≤ 1 * Real.log (((4 * X : ℕ) : ℝ)) :=
        mul_le_mul_of_nonneg_left hlog_le (by norm_num)
    _ = Real.log (((4 * X : ℕ) : ℝ)) := by ring

/-- Ambient type of exact high-g Type II summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29130ffb1b08afe4da29860f267cd0d827f700d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
