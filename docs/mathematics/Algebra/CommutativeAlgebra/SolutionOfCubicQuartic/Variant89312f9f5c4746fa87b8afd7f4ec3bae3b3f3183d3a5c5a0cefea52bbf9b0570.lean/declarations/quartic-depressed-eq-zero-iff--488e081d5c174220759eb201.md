# quartic_depressed_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abbb8d3f-65ef-622b-1a21-f2e6db33dad0",
  "kind": "theorem",
  "lexical_name": "quartic_depressed_eq_zero_iff",
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
  "slug": "quartic-depressed-eq-zero-iff--488e081d5c174220759eb201",
  "source": {
    "blob": "985f4bb0ecd82de13fed676e35e2dea9a0547ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 174,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:488e081d5c174220759eb2016157390476c096888de639cb67cd496b0b10eac1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abbb8d3f-65ef-622b-1a21-f2e6db33dad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_depressed_eq_zero_iff
    (hq_nonzero : q ≠ 0)
    (hu : u ^ 3 - p * u ^ 2 - 4 * r * u + 4 * p * r - q ^ 2 = 0)
    (hs : s ^ 2 = u - p)
    (hv : v ^ 2 = 4 * s ^ 2 - 8 * (u - q / s))
    (hw : w ^ 2 = 4 * s ^ 2 - 8 * (u + q / s))
    (x : K) :
    x ^ 4 + p * x ^ 2 + q * x + r = 0 ↔
      x = (-2 * s - v) / 4 ∨ x = (-2 * s + v) / 4 ∨ x = (2 * s - w) / 4 ∨ x = (2 * s + w) / 4 := by
  have hi2 : (2 : K) ≠ 0 := Invertible.ne_zero _
  have h4 : (4 : K) = 2 ^ 2 := by norm_num
  have hs_nonzero : s ≠ 0 := by
    contrapose hq_nonzero with hs0
    linear_combination (exp := 2) -hu + (4 * r - u ^ 2) * hs + (u ^ 2 * s - 4 * r * s) * hs0
  calc
    _ ↔ 4 * (x ^ 4 + p * x ^ 2 + q * x + r) = 0 := by simp [h4, hi2]
    _ ↔ (2 * (x * x) + 2 * s * x + (u - q / s)) * (2 * (x * x) + -(2 * s) * x + (u + q / s)) =
        0 := by
      apply Eq.congr_left
      field_simp
      linear_combination -hu + (-x ^ 2 * s ^ 2 - x ^ 2 * p + x ^ 2 * u) * hw +
        (x ^ 2 * w ^ 2 + 8 * x ^ 2 * u + 8 * x ^ 2 * q / s - u ^ 2 + 4 * r) * hs
    _ ↔ _ := by
      have hv' : discrim 2 (2 * s) (u - q / s) = v * v := by rw [discrim]; linear_combination -hv
      have hw' : discrim 2 (-(2 * s)) (u + q / s) = w * w := by rw [discrim]; linear_combination -hw
      rw [mul_eq_zero, quadratic_eq_zero_iff hi2 hv', quadratic_eq_zero_iff hi2 hw']
      simp [(by norm_num : (2 : K) * 2 = 4), or_assoc, or_comm]

/-- **The Solution of Quartic**.
  The roots of a quartic polynomial when `q` is nonzero. See [Zwillinger](zwillinger2003).
  Here, `u` needs to satisfy the cubic resolvent. An explicit expression of `u` is possible using
  the cubic formula, but would be too long. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variant89312f9f5c4746fa87b8afd7f4ec3bae3b3f3183d3a5c5a0cefea52bbf9b0570.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985f4bb0ecd82de13fed676e35e2dea9a0547ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
