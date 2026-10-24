# abs_value_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f695f559-e697-ad8e-59d3-ec0a1d7c9f7d",
  "kind": "theorem",
  "lexical_name": "abs_value_le",
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
  "slug": "abs-value-le--3a839c11e175d23ff9db7ebf",
  "source": {
    "blob": "00e86f3c36823ce4ec2de71f75c78414a55d02bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/Analysis/ErrorBounds/PeriodicBernoulli.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a839c11e175d23ff9db7ebf9b9792de3847a9b3f3dbb6305a359d8b0d25ffd3",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/PeriodicBernoulli.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f695f559-e697-ad8e-59d3-ec0a1d7c9f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_value_le (m : ℕ) {x : ℝ} (hx : x ∈ Icc 0 1) :
    |value m x| ≤ (majorant m : ℝ) := by
  rw [value_expansion]
  calc
    _ ≤ ∑ i ∈ Finset.range (m + 1),
        |(((_root_.bernoulli i) * (m.choose i : ℚ) : ℚ) : ℝ) * x ^ (m - i)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ Finset.range (m + 1),
        |(((_root_.bernoulli i) * (m.choose i : ℚ) : ℚ) : ℝ)| := by
      apply Finset.sum_le_sum
      intro i _
      rw [abs_mul, abs_pow, abs_of_nonneg hx.1]
      exact mul_le_of_le_one_right (abs_nonneg _) (pow_le_one₀ hx.1 hx.2)
    _ = (majorant m : ℝ) := by simp [majorant]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/PeriodicBernoulli.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/PeriodicBernoulli.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e86f3c36823ce4ec2de71f75c78414a55d02bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
