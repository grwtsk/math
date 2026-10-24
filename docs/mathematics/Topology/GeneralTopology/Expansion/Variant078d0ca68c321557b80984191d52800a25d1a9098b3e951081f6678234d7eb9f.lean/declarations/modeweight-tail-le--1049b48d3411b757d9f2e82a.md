# modeWeight_tail_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64755561-7025-d719-c500-44d736a3bed4",
  "kind": "theorem",
  "lexical_name": "modeWeight_tail_le",
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
  "slug": "modeweight-tail-le--1049b48d3411b757d9f2e82a",
  "source": {
    "blob": "f7bd209c79a14f60617ffde7bfe9a494f24c62c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1049b48d3411b757d9f2e82a3c286fde26f262db36969dc5b2a07e114f6227b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64755561-7025-d719-c500-44d736a3bed4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem modeWeight_tail_le
    (o : ZeroOccurrence)
    (ho : 1 ≤ ‖shiftedValue o‖) :
    modeWeight o ≤
      modeTailConstant *
        (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  let r := ‖shiftedValue o‖
  have hr : 0 < r := by
    dsimp [r]
    linarith
  have hr1 : 0 < 1 + r := by positivity
  have hcoef :=
    modeCoefficient_norm_le (shiftedValue o) ho
  have h8 :
      (1 + r) ^ 8 ≤ 256 * r ^ 8 := by
    calc
      _ ≤ (2 * r) ^ 8 := by
        gcongr
        linarith
      _ = _ := by ring
  have h6 :
      (1 + r) ^ 6 ≤ 64 * r ^ 6 := by
    calc
      _ ≤ (2 * r) ^ 6 := by
        gcongr
        linarith
      _ = _ := by ring
  have hinv :
      1 / r ^ 6 ≤ 64 / (1 + r) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using h6
  calc
    modeWeight o ≤
        (589824 / r ^ 14) * (256 * r ^ 8) := by
      unfold modeWeight
      dsimp [r] at hcoef ⊢
      gcongr
    _ = (589824 * 256) * (1 / r ^ 6) := by
      field_simp
    _ ≤ (589824 * 256) *
        (64 / (1 + r) ^ 6) := by
      exact mul_le_mul_of_nonneg_left hinv (by norm_num)
    _ = modeTailConstant *
        (1 + r) ^ (-6 : ℝ) := by
      unfold modeTailConstant
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num,
        Real.rpow_neg hr1.le, Real.rpow_natCast]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bd209c79a14f60617ffde7bfe9a494f24c62c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
