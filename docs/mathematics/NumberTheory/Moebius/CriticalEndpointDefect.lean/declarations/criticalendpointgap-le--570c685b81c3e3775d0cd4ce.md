# criticalEndpointGap_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e908ee2-3fc3-8937-8b69-f503b10d42b4",
  "kind": "theorem",
  "lexical_name": "criticalEndpointGap_le",
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
  "slug": "criticalendpointgap-le--570c685b81c3e3775d0cd4ce",
  "source": {
    "blob": "46e1eead76aacda6818a266dc3399c9fae01743b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:570c685b81c3e3775d0cd4ce2a3a39086e0005d668764e8a3177ebb3bfcfcdba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e908ee2-3fc3-8937-8b69-f503b10d42b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalEndpointGap_le {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ≤
      1 / ((n : ℝ) * Real.sqrt n) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  let a : ℝ := Real.sqrt n
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 < b := by dsimp [b]; positivity
  have hab : a ≤ b := by
    dsimp [a, b]
    exact Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ n)
  have ha2 : a ^ 2 = (n : ℝ) := by
    dsimp [a]
    exact Real.sq_sqrt hnpos.le
  have hb2 : b ^ 2 = ((n + 1 : ℕ) : ℝ) := by
    dsimp [b]
    exact Real.sq_sqrt hspos.le
  have hconj : (b - a) * (a + b) = 1 := by
    have hdiff : b ^ 2 - a ^ 2 = 1 := by
      rw [hb2, ha2]
      norm_num
    nlinarith
  have hgap : a⁻¹ - b⁻¹ = 1 / (a * b * (a + b)) := by
    field_simp [ha.ne', hb.ne', (add_pos ha hb).ne']
    nlinarith [hconj]
  have hdenom : (n : ℝ) * a ≤ a * b * (a + b) := by
    rw [← ha2]
    have habmul : a * a ≤ a * b :=
      mul_le_mul_of_nonneg_left hab ha.le
    have hasum : a ≤ a + b := le_add_of_nonneg_right hb.le
    calc
      a ^ 2 * a = (a * a) * a := by ring
      _ ≤ (a * b) * a :=
        mul_le_mul_of_nonneg_right habmul ha.le
      _ ≤ a * b * (a + b) :=
        mul_le_mul_of_nonneg_left hasum (mul_nonneg ha.le hb.le)
  unfold criticalEndpointGap
  change a⁻¹ - b⁻¹ ≤ 1 / ((n : ℝ) * a)
  rw [hgap]
  exact one_div_le_one_div_of_le (mul_pos hnpos ha) hdenom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e1eead76aacda6818a266dc3399c9fae01743b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
