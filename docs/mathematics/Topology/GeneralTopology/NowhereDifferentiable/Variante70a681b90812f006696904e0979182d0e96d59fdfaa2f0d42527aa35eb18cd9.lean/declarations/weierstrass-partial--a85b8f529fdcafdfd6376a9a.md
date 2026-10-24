# weierstrass_partial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5890105-589e-a50e-2c85-8651857cdf3a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d20ca98-52a6-8eaa-3445-b5eb9e4ddac3",
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
  "slug": "weierstrass-partial--a85b8f529fdcafdfd6376a9a",
  "source": {
    "blob": "2cc545e8a4f1f3764f04b77a29811cff41531c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a85b8f529fdcafdfd6376a9ab5fa5fdf085444c99b10d2cbb64e64b5787991b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d20ca98-52a6-8eaa-3445-b5eb9e4ddac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NowhereDifferentiable/Variante70a681b90812f006696904e0979182d0e96d59fdfaa2f0d42527aa35eb18cd9.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc545e8a4f1f3764f04b77a29811cff41531c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
