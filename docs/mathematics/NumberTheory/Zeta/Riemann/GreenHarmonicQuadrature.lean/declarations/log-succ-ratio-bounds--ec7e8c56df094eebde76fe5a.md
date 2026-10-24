# log_succ_ratio_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b147434-8f51-b6a0-419e-a3955f0ed4ab",
  "kind": "theorem",
  "lexical_name": "log_succ_ratio_bounds",
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
  "slug": "log-succ-ratio-bounds--ec7e8c56df094eebde76fe5a",
  "source": {
    "blob": "a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec7e8c56df094eebde76fe5aa7a1dd3ea941a61c38dfefebbb65ee2320ac0a3e",
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

Occurrence: `result:9b147434-8f51-b6a0-419e-a3955f0ed4ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_succ_ratio_bounds
    {n : ℕ} (hn : 1 ≤ n) :
    1 / (n + 1 : ℝ) ≤ Real.log ((n + 1 : ℝ) / n) ∧
      Real.log ((n + 1 : ℝ) / n) ≤ 1 / (n : ℝ) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hratio :
      ((n + 1 : ℝ) / n) = 1 + 1 / (n : ℝ) := by
    field_simp
    ring
  rw [hratio]
  constructor
  · have h := Real.log_le_sub_one_of_pos (show 0 < 1 + 1 / (n + 1 : ℝ) by positivity)
    have hrec :
        1 + 1 / (n + 1 : ℝ) ≤ 1 + 1 / (n : ℝ) := by
      gcongr
      exact one_div_le_one_div_of_le hnpos (by norm_num)
    have hlogmono :
        Real.log (1 + 1 / (n + 1 : ℝ)) ≤
          Real.log (1 + 1 / (n : ℝ)) := by
      exact Real.strictMonoOn_log.monotoneOn (by positivity) (by positivity) hrec
    have hlower :
        1 / (n + 1 : ℝ) ≤
          Real.log (1 + 1 / (n + 1 : ℝ)) := by
      have hloglower := Real.le_log_one_add_of_nonneg
        (show 0 ≤ 1 / (n : ℝ) by positivity)
      field_simp at hloglower ⊢
      nlinarith
    exact hlower.trans hlogmono
  · exact Real.log_le_sub_one_of_pos (by positivity)

/-- Finite right harmonic sum differs from log ratio by at most 1/X.
Proof is by induction on the endpoint and the one-cell logarithmic squeeze. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GreenHarmonicQuadrature.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cea2c1f1c6101646ebd26b0e95d40d506d9fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
