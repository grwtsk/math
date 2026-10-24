# weierstrass_partial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d8438b4-0edc-0a7d-32da-040f43ab5241",
  "kind": "theorem",
  "lexical_name": "weierstrass_partial",
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
  "slug": "weierstrass-partial--5a5e5c3c835dc901aa52209f",
  "source": {
    "blob": "3d039fe7399d5773bf04d9bd72575f5fee7bf6ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a5e5c3c835dc901aa52209fc4eafff32009c6f5f473617e1786cf5591689e8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d8438b4-0edc-0a7d-32da-040f43ab5241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weierstrass_partial {a : ℝ} (ha : 0 < a) {b : ℕ} (hab : 1 < a * b) (x : ℝ) (m : ℕ) :
    |∑ n ∈ Finset.range m, a ^ n * (cos (b ^ n * π * seq b x m) - cos (b ^ n * π * x))| ≤
      |seq b x m - x| * (π / (a * b - 1) * (a * b) ^ m) := by
  grw [Finset.abs_sum_le_sum_abs]
  simp_rw [abs_mul, abs_pow, abs_of_nonneg ha.le]
  apply le_trans <| Finset.sum_le_sum fun n _ ↦
    mul_le_mul_of_nonneg_left (abs_cos_sub_cos_le _ _) (pow_nonneg ha.le _)
  have (n : ℕ) : a ^ n * |b ^ n * π * seq b x m - b ^ n * π * x| =
      (a * b) ^ n * (π * |seq b x m - x|) := by
    simp_rw [← mul_sub, abs_mul, abs_pow, mul_pow]
    rw [abs_of_nonneg pi_nonneg, abs_of_nonneg b.cast_nonneg]
    ring
  simp_rw [this, ← Finset.sum_mul, geom_sum_eq hab.ne.symm]
  field_simp
  refine div_le_div_of_nonneg_right ?_ (sub_nonneg.mpr hab.le)
  simp [sub_one_mul]

/-- The remainder has lower bound in absolute value $|B| \ge |x_m - x| 2 (ab)^m / 3$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variant7b1541db10ce2b0d90ccc2c4912fffc8d46e0cf29111b4724d04f034bc6efe2d.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d039fe7399d5773bf04d9bd72575f5fee7bf6ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
