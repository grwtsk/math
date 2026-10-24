# eq_incenter_of_oangle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:378daa13-4c53-caed-c0e7-665543e56b90",
  "kind": "lemma",
  "lexical_name": "eq_incenter_of_oangle_eq",
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
  "slug": "eq-incenter-of-oangle-eq--a1ceca9ae28df6359a95c936",
  "source": {
    "blob": "107ec32e2e0b69e072284ff08f4886d9128a9537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 226,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ceca9ae28df6359a95c936bb9891c29aad5cc0bb50afd673b924a9366dbb27",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:378daa13-4c53-caed-c0e7-665543e56b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_incenter_of_oangle_eq {p : P}
    (h₁ : ∡ (t.points i₂) (t.points i₁) p = ∡ p (t.points i₁) (t.points i₃))
    (h₂ : ∡ (t.points i₃) (t.points i₂) p = ∡ p (t.points i₂) (t.points i₁)) :
    p = t.incenter := by
  obtain ⟨signs, rfl⟩ := t.eq_excenter_of_two_zsmul_oangle_eq h₁₂ h₁₃ h₂₃ (by rw [h₁]) (by rw [h₂])
  have h₁' := t.eq_incenter_or_eq_excenter_singleton_of_oangle_eq h₁₂ h₁₃ h₂₃ h₁
  have h₂' := t.eq_incenter_or_eq_excenter_singleton_of_oangle_eq h₂₃ h₁₂.symm h₁₃.symm h₂
  rcases h₁' with h₁' | h₁'
  · exact h₁'
  rcases h₂' with h₂' | h₂'
  · exact h₂'
  rw [h₁'] at h₂'
  exfalso
  exact t.excenter_singleton_injective.ne h₁₂ h₂'

variable {t} in
/-- A point lying on the internal angle bisector from vertex `i₁` and the external angle bisector
from another vertex is the excenter opposite vertex `i₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Incenter/Variant99138d7455941e567534fb4227722015fc45a85e21b64ca2134029722dfec2de.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `107ec32e2e0b69e072284ff08f4886d9128a9537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
