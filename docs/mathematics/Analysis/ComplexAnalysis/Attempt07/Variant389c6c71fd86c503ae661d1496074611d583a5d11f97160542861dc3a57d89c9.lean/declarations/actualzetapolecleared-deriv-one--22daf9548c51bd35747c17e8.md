# actualZetaPoleCleared_deriv_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0eaf1de6-e550-fd83-973a-0880d629690a",
  "kind": "theorem",
  "lexical_name": "actualZetaPoleCleared_deriv_one",
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
  "slug": "actualzetapolecleared-deriv-one--22daf9548c51bd35747c17e8",
  "source": {
    "blob": "d626f7f3c3b49ebf1239816b2f57ee591d759452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22daf9548c51bd35747c17e8cc055b4bdb60cb9ac3f964f78205fc0458919f17",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0eaf1de6-e550-fd83-973a-0880d629690a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZetaPoleCleared_deriv_one :
    deriv actualZetaPoleCleared 1 = (Real.eulerMascheroniConstant : ℂ) := by
  have he : actualZetaPoleCleared =ᶠ[𝓝 1] riemannZeta₁ := by
    filter_upwards [eventually_ne_nhds (one_ne_zero : (1 : ℂ) ≠ 0)] with s hs0
    by_cases hs1 : s = 1
    · subst s
      simp only [actualZetaPoleCleared_at_one, riemannZeta₁_one]
    · rw [actualZetaPoleCleared_eq hs0 hs1, riemannZeta_eq_inv_sub_mul hs1]
      field_simp
  rw [he.deriv_eq, deriv_riemannZeta₁_one]

/-- The finite pole-one value retains the complete actual lower-seven and gamma heads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d626f7f3c3b49ebf1239816b2f57ee591d759452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
