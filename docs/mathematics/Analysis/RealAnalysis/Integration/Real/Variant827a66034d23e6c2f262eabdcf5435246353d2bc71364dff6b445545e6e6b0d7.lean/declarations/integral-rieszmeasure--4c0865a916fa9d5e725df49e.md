# integral_rieszMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5434ac85-26fb-37cb-8b1d-c5d152a0f33a",
  "kind": "theorem",
  "lexical_name": "integral_rieszMeasure",
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
  "slug": "integral-rieszmeasure--4c0865a916fa9d5e725df49e",
  "source": {
    "blob": "f9230d0e1cf3676bffc7b702877c6614d6fc8e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c0865a916fa9d5e725df49e7ee540177d735bf3c55096f4b5b78deff0edae18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5434ac85-26fb-37cb-8b1d-c5d152a0f33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_rieszMeasure (f : C_c(X, ℝ)) : ∫ x, f x ∂(rieszMeasure hΛ) = Λ f := by
  -- We apply the result `Λ f ≤ ∫ x, f x ∂(rieszMeasure hΛ)` to `f` and `-f`.
  apply le_antisymm
  -- prove the inequality for `- f`
  · calc
      _ = - ∫ x, (-f) x ∂(rieszMeasure hΛ) := by simpa using integral_neg' (-f)
      _ ≤ - Λ (-f) := neg_le_neg (integral_riesz_aux hΛ (-f))
      _ = Λ (- -f) := Eq.symm (LinearMap.map_neg Λ (- f))
      _ = _ := by rw [neg_neg]
  -- prove the inequality for `f`
  · exact integral_riesz_aux hΛ f

end RealRMK
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variant827a66034d23e6c2f262eabdcf5435246353d2bc71364dff6b445545e6e6b0d7.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9230d0e1cf3676bffc7b702877c6614d6fc8e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
