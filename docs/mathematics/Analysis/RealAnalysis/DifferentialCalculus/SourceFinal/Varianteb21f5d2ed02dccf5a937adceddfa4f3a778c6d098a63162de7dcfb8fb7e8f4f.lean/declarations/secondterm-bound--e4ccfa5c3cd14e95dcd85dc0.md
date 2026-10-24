# secondTerm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "677fee9f54688d1fc0cf5feac642a71a1a0614bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c83b530b-be4b-1d99-166a-59c041cc9dd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c01e3a9-0734-047a-6c98-47ca20a05048",
  "kind": "theorem",
  "lexical_name": "secondTerm_bound",
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
  "slug": "secondterm-bound--e4ccfa5c3cd14e95dcd85dc0",
  "source": {
    "blob": "677fee9f54688d1fc0cf5feac642a71a1a0614bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ccfa5c3cd14e95dcd85dc0009fdf35c535a9ec14e64ddd8a67ad3697b4945d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c01e3a9-0734-047a-6c98-47ca20a05048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem secondTerm_bound {l y : ℝ} (hl : -2 < l) (hy : l < y) (n : ℕ) :
    ‖secondTerm y n‖ ≤ 1 / (lowerCoefficient l) ^ 2 * weight n := by
  have hc := lowerCoefficient_pos hl
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy) n
  have hlow := rate_lower hl hy n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : (lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2 ≤ (y + a n) ^ 2 := by
    have := (sq_le_sq₀ (by positivity : 0 ≤ lowerCoefficient l * ((n : ℝ) + 1)) hay.le).2 hlow
    nlinarith
  rw [secondTerm, Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ 1 / ((lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (by norm_num) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677fee9f54688d1fc0cf5feac642a71a1a0614bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
