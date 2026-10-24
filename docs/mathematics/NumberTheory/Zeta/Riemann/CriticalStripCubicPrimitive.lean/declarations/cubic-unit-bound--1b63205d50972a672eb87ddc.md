# cubic_unit_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e335c20e-43f4-d3ea-8e0e-7288d44a6e78",
  "kind": "lemma",
  "lexical_name": "cubic_unit_bound",
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
  "slug": "cubic-unit-bound--1b63205d50972a672eb87ddc",
  "source": {
    "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b63205d50972a672eb87ddc41a1b4d2c1524d7313507d1bc76f2c10b3867da5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e335c20e-43f4-d3ea-8e0e-7288d44a6e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cubic_unit_bound {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |u * (u - 1) * (2 * u - 1) / 12| ≤ (1 / 120 : ℝ) := by
  let v : ℝ := |2 * u - 1|
  have hv : 0 ≤ v := abs_nonneg _
  have hv1 : v ≤ 1 := by
    dsimp only [v]
    apply abs_le.mpr
    constructor <;> linarith
  have hp : 0 ≤ 5 * v ^ 3 - 5 * v + 2 := by
    by_cases hsmall : v ≤ 2 / 5
    · have hv3 : 0 ≤ v ^ 3 := pow_nonneg hv _
      nlinarith
    · have hlarge : 2 / 5 ≤ v := (lt_of_not_ge hsmall).le
      have hterm : 0 ≤ 5 * (v - 3 / 5) ^ 2 * (v + 6 / 5) := by positivity
      have hrem : 0 ≤ (2 / 5 : ℝ) * (v - 2 / 5) := by positivity
      have heq : 5 * v ^ 3 - 5 * v + 2 =
          5 * (v - 3 / 5) ^ 2 * (v + 6 / 5) + (2 / 5) * (v - 2 / 5) := by ring
      rw [heq]
      exact add_nonneg hterm hrem
  have hsmall : v * (1 - v ^ 2) ≤ (2 / 5 : ℝ) := by nlinarith
  have hsq : v ^ 2 = (2 * u - 1) ^ 2 := sq_abs _
  have heq : v * (1 - v ^ 2) = 4 * u * (1 - u) * v := by rw [hsq]; ring
  have habs : |u * (u - 1) * (2 * u - 1) / 12| = u * (1 - u) * v / 12 := by
    rw [abs_div, abs_mul, abs_mul, abs_of_nonneg hu,
      abs_of_nonpos (sub_nonpos.mpr hu1)]
    dsimp only [v]
    norm_num <;> ring
  rw [habs]
  rw [heq] at hsmall
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
