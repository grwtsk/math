# mul_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4be814e6-abe9-6d4e-52ba-17a4569682ab",
  "kind": "theorem",
  "lexical_name": "mul_sound",
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
  "slug": "mul-sound--fffa347a2b4a87e4aa9c5b45",
  "source": {
    "blob": "61fabd4f3b0e4381e9a4ab359302230a9b27a3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fffa347a2b4a87e4aa9c5b45f05d3e8599d17d94b711321a6f73c19992cd1a9f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4be814e6-abe9-6d4e-52ba-17a4569682ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (mul a b) (x * y) := by
  dsimp [Contains, mul] at *
  push_cast
  have ha : (0 : ℝ) ≤ a.r := (abs_nonneg _).trans hx
  have hb : (0 : ℝ) ≤ b.r := (abs_nonneg _).trans hy
  calc
    |x * y - a.c * b.c| =
        |(a.c : ℝ) * (y - b.c) + (b.c : ℝ) * (x - a.c) +
          (x - a.c) * (y - b.c)| := by congr 1; ring
    _ ≤ |(a.c : ℝ) * (y - b.c)| + |(b.c : ℝ) * (x - a.c)| +
          |(x - a.c) * (y - b.c)| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |(a.c : ℝ)| * |y - b.c| + |(b.c : ℝ)| * |x - a.c| +
          |x - a.c| * |y - b.c| := by simp only [abs_mul]
    _ ≤ |(a.c : ℝ)| * b.r + |(b.c : ℝ)| * a.r + a.r * b.r := by
      exact add_le_add
        (add_le_add (mul_le_mul_of_nonneg_left hy (abs_nonneg _))
          (mul_le_mul_of_nonneg_left hx (abs_nonneg _)))
        (mul_le_mul hx hy (abs_nonneg _) ha)

/-- Recursive interval sum over a finite family, starting from the exact zero enclosure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61fabd4f3b0e4381e9a4ab359302230a9b27a3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
