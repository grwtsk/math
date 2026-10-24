# literal_prefix_deficit_eventual_two_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a79ae8c3-6ef1-5e70-e663-7bcba76f362f",
  "kind": "theorem",
  "lexical_name": "literal_prefix_deficit_eventual_two_sided",
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
  "slug": "literal-prefix-deficit-eventual-two-sided--12244818ee18f0f7c0bb9a49",
  "source": {
    "blob": "0b5eeb74c37bc728dd220d4b1ab2959504f9e5fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 99,
    "path": "GRWTSK/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12244818ee18f0f7c0bb9a4965020ed6c26162450434af358081489a0b184518",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a79ae8c3-6ef1-5e70-e663-7bcba76f362f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_prefix_deficit_eventual_two_sided {α t₀ : ℝ}
    (hα : BadlyApproximable α) (ht₀ : 0 < t₀) :
    ∃ k C R : ℝ, 0 < k ∧ 0 < C ∧ 0 < R ∧ ∀ T : ℝ, R ≤ T →
      k/T^2 ≤ 2-prefixMaximum α t₀ T ∧ 2-prefixMaximum α t₀ T ≤ C/T^2 := by
  obtain ⟨k,hk,hlow⟩ := literal_prefix_maximum_uniform_deficit hα ht₀
  obtain ⟨C,R,hC,hR,hup⟩ := literal_prefix_deficit_eventual_upper hα
  refine ⟨k,C,max 1 (max t₀ R),hk,hC,?_,?_⟩
  · exact lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) (le_max_left _ _)
  intro T hT
  have hT1 : 1 ≤ T := (le_max_left _ _).trans hT
  have hTt : t₀ ≤ T := ((le_max_left _ _).trans (le_max_right _ _)).trans hT
  have hTR : R ≤ T := ((le_max_right _ _).trans (le_max_right _ _)).trans hT
  exact ⟨hlow T hT1 hTt,hup T hTR⟩

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeUpperDeficit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeUpperDeficit/Variant25377fb4c51948a949e508d30f0cd89607bc7d8448abc3dcf656f7ec1e9653cd.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5eeb74c37bc728dd220d4b1ab2959504f9e5fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
