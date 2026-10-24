# ResidualFamily.abs_total_le_absoluteBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8df47efc-ca07-e7cd-f507-ac05f8a94a66",
  "kind": "theorem",
  "lexical_name": "ResidualFamily.abs_total_le_absoluteBudget",
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
  "slug": "residualfamily-abs-total-le-absolutebudget--7f8e32ddbaefeff6e74c0720",
  "source": {
    "blob": "398b99facdc174d9812ca2596f8bda9ac6766c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8e32ddbaefeff6e74c0720bf120d08e060f47c17d9f67187fc8786c4e6fb44",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8df47efc-ca07-e7cd-f507-ac05f8a94a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ResidualFamily.abs_total_le_absoluteBudget {T : Type*}
    (residuals : ResidualFamily T) (n : ℕ) (f g : T) :
    |residuals.total n f g| ≤ residuals.absoluteBudget n f g := by
  let a : ℝ := residuals.source n f g
  let b : ℝ := residuals.prime n f g
  let c : ℝ := residuals.archimedean n f g
  let d : ℝ := residuals.pole n f g
  let e : ℝ := residuals.zero n f g
  let k : ℝ := residuals.endpoint n f g
  let l : ℝ := residuals.geometric n f g
  let m : ℝ := residuals.mirror n f g
  let t : ℝ := residuals.tail n f g
  change |a + b + c + d + e + k + l + m + t| ≤
    |a| + |b| + |c| + |d| + |e| + |k| + |l| + |m| + |t|
  have h2 : |a + b| ≤ |a| + |b| := abs_add_le a b
  have h3 : |a + b + c| ≤ |a + b| + |c| := abs_add_le (a + b) c
  have h4 : |a + b + c + d| ≤ |a + b + c| + |d| :=
    abs_add_le (a + b + c) d
  have h5 : |a + b + c + d + e| ≤ |a + b + c + d| + |e| :=
    abs_add_le (a + b + c + d) e
  have h6 : |a + b + c + d + e + k| ≤ |a + b + c + d + e| + |k| :=
    abs_add_le (a + b + c + d + e) k
  have h7 : |a + b + c + d + e + k + l| ≤ |a + b + c + d + e + k| + |l| :=
    abs_add_le (a + b + c + d + e + k) l
  have h8 : |a + b + c + d + e + k + l + m| ≤
      |a + b + c + d + e + k + l| + |m| :=
    abs_add_le (a + b + c + d + e + k + l) m
  have h9 : |a + b + c + d + e + k + l + m + t| ≤
      |a + b + c + d + e + k + l + m| + |t| :=
    abs_add_le (a + b + c + d + e + k + l + m) t
  linarith

/-- Quantitative obstruction at one test vector and one stage: if the target
diagonal is at most `-μ` and the stage is nonnegative, the complete named
residual budget is at least `μ`. No assumption on the sign of the target
form is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398b99facdc174d9812ca2596f8bda9ac6766c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
