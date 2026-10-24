# riemannZeta.zeroes_on_Compact_finite'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e96041f-375f-7d18-ff41-182d01869ecb",
  "kind": "lemma",
  "lexical_name": "riemannZeta.zeroes_on_Compact_finite'",
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
  "slug": "riemannzeta-zeroes-on-compact-finite--1533d6dbb6bd967b44df2ca0",
  "source": {
    "blob": "66c2589c6e257b0c3c33d4c4596db5dd4e36dee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1533d6dbb6bd967b44df2ca036c02160e43ab13e87819f918dd396d4bad21cd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e96041f-375f-7d18-ff41-182d01869ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemannZeta.zeroes_on_Compact_finite' {S : Set ℂ} (hS1 : IsCompact S) :
    (S ∩ zeroes : Set ℂ).Finite := by
  obtain ⟨ε, hε, hball⟩ := riemannZeta_no_zeroes_near_one
  have : S ∩ zeroes ⊆ (S ∩ (Metric.ball 1 ε)ᶜ) ∩ zeroes :=
    fun s ⟨hs, hz⟩ ↦ ⟨⟨hs, fun hmem ↦ hball s hmem hz⟩, hz⟩
  refine Set.Finite.subset (zeroes_on_Compact_finite ?_ ?_) this
  · exact hS1.inter_right Metric.isOpen_ball.isClosed_compl
  · exact fun ⟨_, h⟩ ↦ h (Metric.mem_ball_self hε)

end

@[blueprint
  "zeroes-of-riemann-zeta"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66c2589c6e257b0c3c33d4c4596db5dd4e36dee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
