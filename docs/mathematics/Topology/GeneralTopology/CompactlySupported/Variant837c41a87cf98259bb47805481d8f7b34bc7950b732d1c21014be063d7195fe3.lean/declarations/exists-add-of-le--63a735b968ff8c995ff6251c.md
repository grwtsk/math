# exists_add_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b37e0244-5dcc-5b61-0094-fb872ca6d9ee",
  "kind": "lemma",
  "lexical_name": "exists_add_of_le",
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
  "slug": "exists-add-of-le--63a735b968ff8c995ff6251c",
  "source": {
    "blob": "756663c8d2496bfcef23a2d7e7545579bcc4bdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 680,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63a735b968ff8c995ff6251c03b65310ee06917354d7f5513843466245e96fe1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b37e0244-5dcc-5b61-0094-fb872ca6d9ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma exists_add_of_le {f₁ f₂ : C_c(α, ℝ≥0)} (h : f₁ ≤ f₂) : ∃ (g : C_c(α, ℝ≥0)),
    f₁ + g = f₂ := by
  refine ⟨⟨f₂.1 - f₁.1, ?_⟩, ?_⟩
  · apply (f₁.hasCompactSupport'.union f₂.hasCompactSupport').of_isClosed_subset isClosed_closure
    rw [tsupport, tsupport, ← closure_union]
    apply closure_mono
    intro x hx
    contrapose hx
    simp only [ContinuousMap.toFun_eq_coe, coe_toContinuousMap, Set.mem_union, Function.mem_support,
      ne_eq, not_or, Decidable.not_not, ContinuousMap.coe_sub, Pi.sub_apply] at hx ⊢
    simp [hx.1, hx.2]
  · ext x
    simpa [← NNReal.coe_add] using add_tsub_cancel_of_le (h x)

/-- The nonnegative part of a continuous compactly supported `ℝ`-valued function as a
continuous compactly supported `ℝ≥0`-valued function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756663c8d2496bfcef23a2d7e7545579bcc4bdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
