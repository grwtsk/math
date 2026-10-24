# literal_compact_prefix_has_positive_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24b2e8df-9046-cc64-2362-017423e6d092",
  "kind": "theorem",
  "lexical_name": "literal_compact_prefix_has_positive_deficit",
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
  "slug": "literal-compact-prefix-has-positive-deficit--82e0a1fc0f3f1d773cf32bc9",
  "source": {
    "blob": "e80692e7c6eb5a01be13737be28ddb4bc57a1f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e0a1fc0f3f1d773cf32bc9b137b8f016bdf100dc4b2872d92e6f438f499cd5",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b2e8df-9046-cc64-2362-017423e6d092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_compact_prefix_has_positive_deficit {α t₀ T : ℝ}
    (hα : Irrational α) (ht₀ : 0 < t₀) (hT : t₀ ≤ T) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ t : ℝ, t ∈ Icc t₀ T → twoMode α t ≤ 2 - δ := by
  obtain ⟨s, hs, hmax⟩ := isCompact_Icc.exists_isMaxOn (nonempty_Icc.mpr hT)
    (literal_two_mode_continuous α).continuousOn
  have hlt := literal_two_mode_lt_two hα (ht₀.trans_le hs.1)
  refine ⟨2 - twoMode α s, by linarith, ?_⟩
  intro t ht
  have h := hmax ht
  change twoMode α t ≤ twoMode α s at h
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeBasic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeBasic/Variante6e14e37fdc3a94a421272b85874f867cd04f6a521c9f1cff9ec25d54c5b0612.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80692e7c6eb5a01be13737be28ddb4bc57a1f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
