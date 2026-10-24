# mem_logComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:978908e3-1b18-64e5-08be-9dc9c5e8639b",
  "kind": "theorem",
  "lexical_name": "mem_logComputable",
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
  "slug": "mem-logcomputable--87443aec9a7f0400d7eddcc8",
  "source": {
    "blob": "a5d77910a9e93a11e86c3302ea1599c8aaba4194",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1875,
    "line": 1849,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87443aec9a7f0400d7eddcc83551c8058d636052f992745fd2dce79e06712a97",
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

Occurrence: `result:978908e3-1b18-64e5-08be-9dc9c5e8639b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1849–1875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_logComputable {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (hpos : 0 < I.lo) (n : ℕ) :
    Real.log x ∈ logComputable I n := by
  simp only [logComputable, not_le.mpr hpos, ↓reduceIte]
  -- Since log is strictly monotone and x ∈ [lo, hi] with lo > 0:
  -- log(lo) ≤ log(x) ≤ log(hi)
  have hlo_pos : (0 : ℝ) < I.lo := by exact_mod_cast hpos
  have hx_pos : 0 < x := lt_of_lt_of_le hlo_pos hx.1
  have hlo_mem := mem_logPointComputable hpos n
  have hhi_pos : 0 < I.hi := lt_of_lt_of_le hpos I.le
  have hhi_mem := mem_logPointComputable hhi_pos n
  -- x ∈ [lo, hi] implies log(lo) ≤ log(x) ≤ log(hi) by monotonicity
  have hlog_lo_le : Real.log I.lo ≤ Real.log x :=
    Real.log_le_log hlo_pos hx.1
  have hlog_x_le_hi : Real.log x ≤ Real.log I.hi :=
    Real.log_le_log hx_pos hx.2
  simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
  constructor
  · calc (min (logPointComputable I.lo n).lo (logPointComputable I.hi n).lo : ℝ)
        ≤ (logPointComputable I.lo n).lo := by exact_mod_cast min_le_left _ _
      _ ≤ Real.log I.lo := hlo_mem.1
      _ ≤ Real.log x := hlog_lo_le
  · calc Real.log x ≤ Real.log I.hi := hlog_x_le_hi
      _ ≤ (logPointComputable I.hi n).hi := hhi_mem.2
      _ ≤ max ((logPointComputable I.lo n).hi : ℝ) ((logPointComputable I.hi n).hi : ℝ) := le_max_right _ _

/-- Conditional version of mem_logComputable for use in correctness proofs.
    Requires I.lo > 0 so the log interval is well-defined and monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean#L1849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d77910a9e93a11e86c3302ea1599c8aaba4194` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
