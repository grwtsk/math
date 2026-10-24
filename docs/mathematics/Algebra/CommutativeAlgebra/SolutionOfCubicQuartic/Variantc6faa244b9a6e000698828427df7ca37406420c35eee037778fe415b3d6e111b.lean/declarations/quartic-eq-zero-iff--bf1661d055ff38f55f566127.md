# quartic_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c3865eb-e123-4b7b-0893-ff49dcf6ee71",
  "kind": "theorem",
  "lexical_name": "quartic_eq_zero_iff",
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
  "slug": "quartic-eq-zero-iff--bf1661d055ff38f55f566127",
  "source": {
    "blob": "2c1e26541bc0cf90a3b34d7df677f850f2a6368d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 206,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf1661d055ff38f55f56612792fabba18bad63cbd9d3c1a6896d2dc5f775b0fe",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c3865eb-e123-4b7b-0893-ff49dcf6ee71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_eq_zero_iff (ha : a ≠ 0)
    (hp : p = (8 * a * c - 3 * b ^ 2) / (8 * a ^ 2))
    (hq : q = (b ^ 3 - 4 * a * b * c + 8 * a ^ 2 * d) / (8 * a ^ 3)) (hq_nonzero : q ≠ 0)
    (hr : r =
      (16 * a * b ^ 2 * c + 256 * a ^ 3 * e - 3 * b ^ 4 - 64 * a ^ 2 * b * d) / (256 * a ^ 4))
    (hu : u ^ 3 - p * u ^ 2 - 4 * r * u + 4 * p * r - q ^ 2 = 0)
    (hs : s ^ 2 = u - p)
    (hv : v ^ 2 = 4 * s ^ 2 - 8 * (u - q / s))
    (hw : w ^ 2 = 4 * s ^ 2 - 8 * (u + q / s)) (x : K) :
    a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e = 0 ↔
      x = (-2 * s - v) / 4 - b / (4 * a) ∨ x = (-2 * s + v) / 4 - b / (4 * a) ∨
        x = (2 * s - w) / 4 - b / (4 * a) ∨ x = (2 * s + w) / 4 - b / (4 * a) := by
  let y := x + b / (4 * a)
  have h4 : (4 : K) = 2 ^ 2 := by norm_num
  have h8 : (8 : K) = 2 ^ 3 := by norm_num
  have h16 : (16 : K) = 2 ^ 4 := by norm_num
  have h256 : (256 : K) = 2 ^ 8 := by norm_num
  have h₁ : a * x ^ 4 + b * x ^ 3 + c * x ^ 2 + d * x + e =
      a * (y ^ 4 + p * y ^ 2 + q * y + r) := by
    rw [hp, hq, hr]
    simp [field_simps, y, ha, h4, h8, h16, h256]; ring
  have h₂ : ∀ x, a * x = 0 ↔ x = 0 := by intro x; simp [ha]
  rw [h₁, h₂, quartic_depressed_eq_zero_iff hq_nonzero hu hs hv hw]
  simp_rw [y, eq_sub_iff_add_eq]

/-- The roots of a quartic polynomial when `q` equals zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SolutionOfCubicQuartic/Variantc6faa244b9a6e000698828427df7ca37406420c35eee037778fe415b3d6e111b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1e26541bc0cf90a3b34d7df677f850f2a6368d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
