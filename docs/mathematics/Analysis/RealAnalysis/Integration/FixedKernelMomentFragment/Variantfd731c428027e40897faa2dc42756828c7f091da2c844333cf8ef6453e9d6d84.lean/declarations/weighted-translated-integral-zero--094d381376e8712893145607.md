# weighted_translated_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02736806-c76e-5398-a9f9-8d14d35c5556",
  "kind": "theorem",
  "lexical_name": "weighted_translated_integral_zero",
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
  "slug": "weighted-translated-integral-zero--094d381376e8712893145607",
  "source": {
    "blob": "0a19fcaa916f6c3a1f91ccc1531047ea815e3267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentFragment/Variantfd731c428027e40897faa2dc42756828c7f091da2c844333cf8ef6453e9d6d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094d381376e8712893145607007e3d49c3615feda44bd50c3768fb23b83bddd9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelMomentFragment/Variantfd731c428027e40897faa2dc42756828c7f091da2c844333cf8ef6453e9d6d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02736806-c76e-5398-a9f9-8d14d35c5556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_translated_integral_zero (t : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) * v (t - 1 - r)) = 0 := by
  simp_rw [weighted_translate]
  rw [integral_const_mul, integral_sub_left_eq_self
    (fun y : ℝ => Real.exp ((-1 / 2 : ℝ) * y) * v y) volume (t - 1),
    weighted_normalizedTest_integral_zero 1 (-1 / 2) le_rfl (by norm_num), mul_zero]

/-- For t≥2 the positive sampling integral is exactly zero, with its endpoint retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelMomentFragment/Variantfd731c428027e40897faa2dc42756828c7f091da2c844333cf8ef6453e9d6d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentFragment/Variantfd731c428027e40897faa2dc42756828c7f091da2c844333cf8ef6453e9d6d84.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a19fcaa916f6c3a1f91ccc1531047ea815e3267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
