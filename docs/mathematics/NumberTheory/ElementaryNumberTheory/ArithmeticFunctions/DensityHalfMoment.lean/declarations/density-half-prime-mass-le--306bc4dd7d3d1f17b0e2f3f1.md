# density_half_prime_mass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5af66123-b865-8298-eb4f-d6b1423ff1e2",
  "kind": "theorem",
  "lexical_name": "density_half_prime_mass_le",
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
  "slug": "density-half-prime-mass-le--306bc4dd7d3d1f17b0e2f3f1",
  "source": {
    "blob": "6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:306bc4dd7d3d1f17b0e2f3f156048f9f345645616e7e1ee00ff06dc65238e89f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5af66123-b865-8298-eb4f-d6b1423ff1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_prime_mass_le {p : ℕ} (hp : p.Prime) :
    1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)) ≤ 4 * reciprocalThreeHalf p := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hs0 := Real.sqrt_nonneg (p : ℝ)
  have hs2 := Real.sq_sqrt (show 0 ≤ (p : ℝ) by positivity)
  have hs : (4 : ℝ)/3 ≤ Real.sqrt (p : ℝ) := by nlinarith
  have hd : 0 < ((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1) :=
    mul_pos (by linarith) (by linarith)
  have he : 0 < (p : ℝ)*Real.sqrt (p : ℝ) := mul_pos (by linarith) (by linarith)
  rw [reciprocal_three_half_sqrt, ← mul_div_assoc, mul_one]
  apply (div_le_div_iff₀ hd he).mpr
  nlinarith [mul_nonneg (show 0 ≤ (p : ℝ) by linarith)
    (show 0 ≤ 3*Real.sqrt (p : ℝ)-4 by linarith)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DensityHalfMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DensityHalfMoment.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ae8ef5cf24176a8a9c4f6fa48b4e1e9775f8337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
