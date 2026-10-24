# complete_linear_pulse_prices_not_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5735dea4-b2aa-d122-ecb7-289c1eb00053",
  "kind": "theorem",
  "lexical_name": "complete_linear_pulse_prices_not_summable",
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
  "slug": "complete-linear-pulse-prices-not-summable--2ab91ed55a0f50a5db716842",
  "source": {
    "blob": "241543a5e90a949de8afee24a5042fa2fedb5dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/Analysis/TriangularAllFixedP/Variantc65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab91ed55a0f50a5db716842570beb142a55d252acaf1bf8bd3dbc6ceefaf10c",
  "verification": {
    "reference": "docs/verification/Analysis/TriangularAllFixedP/Variantc65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5735dea4-b2aa-d122-ecb7-289c1eb00053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_linear_pulse_prices_not_summable {a p : ℝ} (ha : 0 < a) (hp : 1 ≤ p) :
    ¬ Summable (fun j ↦ price (linearSize j) a p) := by
  intro hs
  let C : ℝ := a ^ p / ((16 : ℝ) ^ p * (3 : ℝ) ^ (p - 1))
  have hC : 0 < C := by
    unfold C
    exact div_pos (Real.rpow_pos_of_pos ha _) (mul_pos
      (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 16) _)
      (Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 3) _))
  have hcomp : Summable (fun j ↦ C * (linearSize j : ℝ) ^ (p - 2)) := by
    apply hs.of_nonneg_of_le
    · intro j
      exact mul_nonneg hC.le (Real.rpow_nonneg (Nat.cast_nonneg _) _)
    · intro j
      exact full_real_pulse_price_lower (by unfold linearSize; omega) ha.le hp
  have hpower : Summable (fun j ↦ (linearSize j : ℝ) ^ (p - 2)) :=
    (summable_mul_left_iff hC.ne').mp hcomp
  have hfull : Summable (fun j : ℕ ↦ (j : ℝ) ^ (p - 2)) :=
    (summable_nat_add_iff 2).mp (by simpa only [linearSize] using hpower)
  have hstrict := Real.summable_nat_rpow.mp hfull
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TriangularAllFixedP/Variantc65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TriangularAllFixedP/Variantc65929dff73abd2186efa7e070d9e7d6271c397ecfefcec53b5528609dbac795.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `241543a5e90a949de8afee24a5042fa2fedb5dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
