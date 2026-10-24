# fractionalAboveOne_eq_prefix_on_empty_reflected_region

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d77fa4a-9719-9396-14f6-b0e6d4fc26be",
  "kind": "theorem",
  "lexical_name": "fractionalAboveOne_eq_prefix_on_empty_reflected_region",
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
  "slug": "fractionalaboveone-eq-prefix-on-empty-reflected-region--71c40f33e4c55474ae938feb",
  "source": {
    "blob": "c1e6de0944c3a0cd834a7dba52347e2559e54acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 415,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71c40f33e4c55474ae938feba91294ea8487ca598af1ac54ad9bdb75d0ea6628",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d77fa4a-9719-9396-14f6-b0e6d4fc26be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalAboveOne_eq_prefix_on_empty_reflected_region (A x : ℝ) (hA : 1 ≤ A)
    (hx : A - Real.log 2 ≤ x) : fractionalAboveOne A x = polePrefix A x := by
  have hl : Real.log (2 : ℝ) ≤ 1 := by
    simpa using Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlo : Real.log 2 - A ≤ x := by linarith
  have he := strict_reflected_one_eq_prefix_and_fractional A x hA hlo
  rw [strictReflectedOne_zero_on_upper_region A x hA hx] at he
  linarith

end
end FormalResearch.RiemannHypothesis.SourceReflectedOnePrefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceReflectedOnePrefix/Variantcf91eeb4a78a05b91dbe671e401a878d8ad83fd3dafb609fe9aa9aeb48d39aac.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e6de0944c3a0cd834a7dba52347e2559e54acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
