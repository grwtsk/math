# lebesgue_number_lemma_of_emetric_sUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5370871-234d-ebaf-a58d-43dadd61687c",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma_of_emetric_sUnion",
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
  "slug": "lebesgue-number-lemma-of-emetric-sunion--057097470aa996c0c13a1c0d",
  "source": {
    "blob": "6d82b893419269f80478c8a70e46cecb48ca8b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 357,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057097470aa996c0c13a1c0dbc96f50f4e3800a86414d9dffe80deb2bdab4258",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5370871-234d-ebaf-a58d-43dadd61687c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma_of_emetric_sUnion {c : Set (Set α)} (hs : IsCompact s)
    (hc₁ : ∀ t ∈ c, IsOpen t) (hc₂ : s ⊆ ⋃₀ c) : ∃ δ > 0, ∀ x ∈ s, ∃ t ∈ c, ball x δ ⊆ t := by
  rw [sUnion_eq_iUnion] at hc₂; simpa using lebesgue_number_lemma_of_emetric hs (by simpa) hc₂

end LebesgueNumberLemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant145c1309d580c1c3db3d6e43640b53637238ff19b674841990ffb0b51c0f3735.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d82b893419269f80478c8a70e46cecb48ca8b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
