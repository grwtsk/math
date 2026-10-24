# angular_standard_symbol_to_source_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a889ebb-142c-4f33-7930-5d4a8b4e1e95",
  "kind": "theorem",
  "lexical_name": "angular_standard_symbol_to_source_sign",
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
  "slug": "angular-standard-symbol-to-source-sign--5e077dc6e6d0124fc48d97c3",
  "source": {
    "blob": "91f90151cb778ac9ad0b9b942fb91990f85338ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 446,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e077dc6e6d0124fc48d97c35f0e9a100f227a837e467e9581b8cb3df38ba353",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a889ebb-142c-4f33-7930-5d4a8b4e1e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_standard_symbol_to_source_sign {ω : ℝ} (hω : ω ≠ 0) :
    -signSymbol (sourceAngularFrequency ω) = signSymbol ω := by
  have hden : 0 < 2*Real.pi := mul_pos (by norm_num) Real.pi_pos
  unfold sourceAngularFrequency signSymbol
  rcases lt_or_gt_of_ne hω with hn | hp
  · simp only [if_neg (not_lt.mpr (div_nonneg (by linarith : 0 ≤ -ω) hden.le)),if_pos hn]
  · simp only [if_pos (div_neg_of_neg_of_pos (by linarith : -ω < 0) hden),
      if_neg (not_lt.mpr hp.le)]
    norm_num

/-- The geometric even/odd sectors reverse under sign duality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f90151cb778ac9ad0b9b942fb91990f85338ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
