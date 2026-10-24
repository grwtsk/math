# plainProfile_scale_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0115cb9-afa7-f914-b386-0c3e92e70c07",
  "kind": "theorem",
  "lexical_name": "plainProfile_scale_identity",
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
  "slug": "plainprofile-scale-identity--5b6afd13357c263cc66a6f93",
  "source": {
    "blob": "0d69fa87e0c697dcf51df2ecbdbb5c630098feae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b6afd13357c263cc66a6f93d144b5b1776de9d1b26f92182f1bb44dbefbc93c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0115cb9-afa7-f914-b386-0c3e92e70c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainProfile_scale_identity {A d y : ℝ} (hd : 0 < d) (hy : 0 < y) :
    plainProfile A d y = plainProfile A 1 (d * y) := by
  rw [plainProfile_eq_of_pos A d hy,
    plainProfile_eq_of_pos A 1 (mul_pos hd hy),
    sourcePlainSamplingTerm_eq_source_weight A hd hy,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1)
      (mul_pos hd hy)]
  simp only [one_mul]

/-- The requested product-and-chain derivative contains the actual factor d. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d69fa87e0c697dcf51df2ecbdbb5c630098feae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
