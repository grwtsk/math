# overlapPolynomial0_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b508d58f-35ef-11e1-63a1-6be094b0f611",
  "kind": "theorem",
  "lexical_name": "overlapPolynomial0_upper",
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
  "slug": "overlappolynomial0-upper--8fe30430f551ef0796cacc22",
  "source": {
    "blob": "3dc09c90875c22a5e286279676477cf97a61c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe30430f551ef0796cacc226dfb9128ac8344e2be113ac8112c52c54b586390",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b508d58f-35ef-11e1-63a1-6be094b0f611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlapPolynomial0_upper {u : ℝ} (hu : u∈Icc (0:ℝ) 2) :
    overlapPolynomial0 u≤(128/315:ℝ)*(2-u)^9 := by
  rw [overlapPolynomial0_factor]
  change (2-u)^9*overlapFactor0 u/1531530≤_
  have hp := mul_le_mul_of_nonneg_left (overlapFactor0_bound hu)
    (pow_nonneg (by linarith [hu.2] : 0≤2-u) 9)
  have hq := div_le_div_of_nonneg_right hp (by norm_num : (0:ℝ)≤1531530)
  calc
    _ ≤ (2-u)^9*622336/1531530 := hq
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SourcePrimitiveEnvelopeAttempt04/Variantbcf6f81bc9ae2770d064dec774e629482e7f6a12718844be2895f1a021b65484.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc09c90875c22a5e286279676477cf97a61c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
