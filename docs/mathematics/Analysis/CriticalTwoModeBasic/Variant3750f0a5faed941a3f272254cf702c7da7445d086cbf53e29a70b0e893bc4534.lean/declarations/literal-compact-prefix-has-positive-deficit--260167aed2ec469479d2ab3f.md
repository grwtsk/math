# literal_compact_prefix_has_positive_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f345e5-85af-a3d8-4b6b-e4532aba0b34",
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
  "slug": "literal-compact-prefix-has-positive-deficit--260167aed2ec469479d2ab3f",
  "source": {
    "blob": "01069b2670dba6f99dacf1a33beb2e05c2fdfd27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:260167aed2ec469479d2ab3f50f127b3a1d3a84fb6ba46b813b6ad871c751df0",
  "verification": {
    "reference": "docs/verification/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f345e5-85af-a3d8-4b6b-e4532aba0b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

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

[Verification target and public status](../../../../../verification/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CriticalTwoModeBasic/Variant3750f0a5faed941a3f272254cf702c7da7445d086cbf53e29a70b0e893bc4534.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01069b2670dba6f99dacf1a33beb2e05c2fdfd27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
