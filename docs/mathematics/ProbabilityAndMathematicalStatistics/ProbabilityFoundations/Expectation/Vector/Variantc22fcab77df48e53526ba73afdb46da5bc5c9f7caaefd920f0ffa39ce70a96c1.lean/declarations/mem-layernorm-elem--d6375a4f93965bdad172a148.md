# mem_layerNorm_elem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f76effe1-21b0-62c8-ca0f-5078355cd92b",
  "kind": "theorem",
  "lexical_name": "mem_layerNorm_elem",
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
  "slug": "mem-layernorm-elem--d6375a4f93965bdad172a148",
  "source": {
    "blob": "f23ce61f8848de0853a45d35af011df66345fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 445,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6375a4f93965bdad172a1483a6e835269803c622d502bcd5c99dd9fd7fe3d4f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f76effe1-21b0-62c8-ca0f-5078355cd92b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_layerNorm_elem {xi_c : AffineForm} {inv_std : AffineForm}
    {xi_real inv_std_real : ℝ} {g b : ℚ}
    {eps : AffineForm.NoiseAssignment}
    (hvalid : AffineForm.validNoise eps)
    (hxi : AffineForm.mem_affine xi_c eps xi_real)
    (hinv : AffineForm.mem_affine inv_std eps inv_std_real) :
    let output := AffineForm.add (AffineForm.scale g (AffineForm.mul xi_c inv_std)) (AffineForm.const b)
    AffineForm.mem_affine output eps (xi_real * inv_std_real * g + b) := by
  -- mul is sound
  have hmul := AffineForm.mem_mul hvalid hxi hinv
  -- scale is sound
  have hscale := AffineForm.mem_scale g hmul
  -- add const is sound
  have hadd := AffineForm.mem_add hscale (AffineForm.mem_const b eps)
  -- Simplify to match goal
  simp only at hadd ⊢
  convert hadd using 1
  ring

/-- Helper: length of zipWith3 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23ce61f8848de0853a45d35af011df66345fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
