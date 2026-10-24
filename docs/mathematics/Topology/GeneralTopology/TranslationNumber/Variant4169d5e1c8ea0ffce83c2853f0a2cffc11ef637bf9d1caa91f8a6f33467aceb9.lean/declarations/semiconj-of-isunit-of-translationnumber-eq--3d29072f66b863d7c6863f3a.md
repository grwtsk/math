# semiconj_of_isUnit_of_translationNumber_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c66e8e-1388-5007-8df7-540ff80a0a1d",
  "kind": "theorem",
  "lexical_name": "semiconj_of_isUnit_of_translationNumber_eq",
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
  "slug": "semiconj-of-isunit-of-translationnumber-eq--3d29072f66b863d7c6863f3a",
  "source": {
    "blob": "95ea821f39bc037850094907e864039d77a0051c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1032,
    "line": 1024,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d29072f66b863d7c6863f3a2a9d5aaa4a8c7b2580b886d2047092a640b4edb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c66e8e-1388-5007-8df7-540ff80a0a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1024–1032.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semiconj_of_isUnit_of_translationNumber_eq {f₁ f₂ : CircleDeg1Lift} (h₁ : IsUnit f₁)
    (h₂ : IsUnit f₂) (h : τ f₁ = τ f₂) : ∃ F : CircleDeg1Lift, Semiconj F f₁ f₂ := by
  rcases h₁, h₂ with ⟨⟨f₁, rfl⟩, ⟨f₂, rfl⟩⟩
  exact units_semiconj_of_translationNumber_eq h
#align circle_deg1_lift.semiconj_of_is_unit_of_translation_number_eq CircleDeg1Lift.semiconj_of_isUnit_of_translationNumber_eq

/-- If two lifts of circle homeomorphisms have the same translation number, then they are
semiconjugate by a `CircleDeg1Lift`. This version uses assumptions `bijective f₁` and
`bijective f₂` to assume that `f₁` and `f₂` are homeomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean#L1024).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ea821f39bc037850094907e864039d77a0051c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
