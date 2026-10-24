# abs_log_floor_ratio_sub_log_le_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15c03873-82ab-ec40-7ce7-988c78f91f6c",
  "kind": "theorem",
  "lexical_name": "abs_log_floor_ratio_sub_log_le_local",
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
  "slug": "abs-log-floor-ratio-sub-log-le-local--419d918665d728eb817ed6e7",
  "source": {
    "blob": "a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:419d918665d728eb817ed6e7358867b56e1f11ab2f44e3bf6ffd7f595030ab71",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c03873-82ab-ec40-7ce7-988c78f91f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_log_floor_ratio_sub_log_le_local
    {X m : ℕ} (hX : 1 ≤ X) (hm : X ≤ m)
    {t : ℝ} (ht0 : 0 ≤ t)
    (hlo : (m : ℝ) ≤ (X : ℝ) * (1 + t))
    (hhi : (X : ℝ) * (1 + t) < m + 1) :
    |Real.log ((m : ℝ) / X) - Real.log (1 + t)| ≤ 1 / (X : ℝ) := by
  have hXpos : (0 : ℝ) < X := by exact_mod_cast hX
  have hmpos : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le (by omega : 0 < X) hm)
  have htpos : 0 < 1 + t := by linarith
  have hratioLow : (m : ℝ) / X ≤ 1 + t := (div_le_iff₀ hXpos).2 hlo
  have horder :
      Real.log ((m : ℝ) / X) ≤ Real.log (1 + t) :=
    Real.strictMonoOn_log.monotoneOn (by positivity) (by positivity) hratioLow
  rw [abs_of_nonpos (sub_nonpos.mpr horder), neg_sub]
  rw [← Real.log_div htpos.ne' (by positivity : ((m : ℝ) / X) ≠ 0)]
  have hratio :
      (1 + t) / ((m : ℝ) / X) < 1 + 1 / (m : ℝ) := by
    field_simp
    nlinarith
  calc
    Real.log ((1 + t) / ((m : ℝ) / X)) ≤
        Real.log (1 + 1 / (m : ℝ)) := by
      exact Real.strictMonoOn_log.monotoneOn
        (by positivity) (by positivity) (le_of_lt hratio)
    _ ≤ 1 / (m : ℝ) := Real.log_le_sub_one_of_pos (by positivity)
    _ ≤ 1 / (X : ℝ) := one_div_le_one_div_of_le hXpos (by exact_mod_cast hm)

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
