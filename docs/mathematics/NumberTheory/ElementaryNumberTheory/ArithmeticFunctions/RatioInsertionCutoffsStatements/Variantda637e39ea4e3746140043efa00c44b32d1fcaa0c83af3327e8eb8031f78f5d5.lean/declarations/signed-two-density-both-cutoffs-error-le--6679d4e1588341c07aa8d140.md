# signed_two_density_both_cutoffs_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13d5b5df-1368-6db8-8a13-e211ff89dd20",
  "kind": "theorem",
  "lexical_name": "signed_two_density_both_cutoffs_error_le",
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
  "slug": "signed-two-density-both-cutoffs-error-le--6679d4e1588341c07aa8d140",
  "source": {
    "blob": "5c416e00f7235b6f0ba66627055fbde96336cb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 116,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6679d4e1588341c07aa8d1402414488a95970e279d7300a117c1d47f8b6fbdfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13d5b5df-1368-6db8-8a13-e211ff89dd20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_both_cutoffs_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |SquarefreeCount.finiteSquarefreeDensity (u*v) Z -
      (Real.sqrt 2/2) * (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YL +
        SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YR) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity (u*v) Z| ≤
      (7 * Real.sqrt 2 / 12) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  dsimp only
  let L := SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))
  let R := SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))
  have hL : |L| ≤ 7*Real.sqrt 2/(6*(Nat.sqrt (N/max (2*u) v):ℝ)) :=
    signed_two_density_left_cutoffs_error_le N u v hu hv hodd hG
  have hR : |R| ≤ 7*Real.sqrt 2/(6*(Nat.sqrt (N/max u (2*v)):ℝ)) :=
    signed_two_density_right_cutoffs_error_le N u v hu hv hodd hG
  have heq : SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      (Real.sqrt 2/2) *
        (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) (Nat.sqrt (N / max (2*u) v)) +
          SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) (Nat.sqrt (N / max u (2*v)))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) =
      (1/2:ℝ)*(L+R) := by dsimp [L,R]; ring
  rw [heq, abs_mul, abs_of_pos (by norm_num : (0:ℝ)<1/2)]
  calc
    _ ≤ (1/2:ℝ)*(|L|+|R|) := mul_le_mul_of_nonneg_left (abs_add_le L R) (by norm_num)
    _ ≤ (1/2:ℝ)*(7*Real.sqrt 2/(6*(Nat.sqrt (N/max (2*u) v):ℝ)) +
        7*Real.sqrt 2/(6*(Nat.sqrt (N/max u (2*v)):ℝ))) :=
      mul_le_mul_of_nonneg_left (add_le_add hL hR) (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c416e00f7235b6f0ba66627055fbde96336cb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
