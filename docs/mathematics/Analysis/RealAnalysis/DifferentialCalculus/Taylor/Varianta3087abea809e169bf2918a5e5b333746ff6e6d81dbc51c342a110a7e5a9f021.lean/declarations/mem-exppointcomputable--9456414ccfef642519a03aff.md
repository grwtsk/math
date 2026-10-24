# mem_expPointComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:224ee004-8b86-804e-b33f-3a52134928c2",
  "kind": "theorem",
  "lexical_name": "mem_expPointComputable",
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
  "slug": "mem-exppointcomputable--9456414ccfef642519a03aff",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1029,
    "line": 1000,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9456414ccfef642519a03aff178673ff2910b9fc3e5ac4b56c5c5312b0baa406",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:224ee004-8b86-804e-b33f-3a52134928c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1029.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_expPointComputable (q : ℚ) (n : ℕ) :
    Real.exp q ∈ expPointComputable q n := by
  simp only [expPointComputable]
  set k := expReduceK q
  set m : ℕ := (2:ℕ)^k
  set q' : ℚ := q / m
  have hbase : Real.exp q' ∈ expPointComputableRaw q' n :=
    mem_expPointComputableRaw q' n
  have hpow : (Real.exp q') ^ m ∈ pow (expPointComputableRaw q' n) m :=
    mem_pow hbase m
  have hm : (m:ℝ) ≠ 0 := by
    -- m = 2^k > 0
    exact_mod_cast (pow_ne_zero k (by decide : (2:ℕ) ≠ 0))
  have hq : (q : ℝ) = (m:ℝ) * (q' : ℝ) := by
    -- q' = q / m
    have hm' : (m:ℝ) ≠ 0 := hm
    calc
      (q:ℝ) = (m:ℝ) * ((q:ℝ) / (m:ℝ)) := by
        field_simp [hm']
      _ = (m:ℝ) * (q' : ℝ) := by
        simp [q', Rat.cast_div, Rat.cast_natCast]
  have hexp : Real.exp q = (Real.exp q') ^ m := by
    calc
      Real.exp q = Real.exp ((m:ℝ) * (q' : ℝ)) := by simp [hq]
      _ = (Real.exp (q' : ℝ)) ^ m := by
            -- exp (m * q') = (exp q')^m
            simpa [mul_comm] using (Real.exp_nat_mul (q' : ℝ) m)
  -- rewrite and apply membership
  simpa [hexp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
