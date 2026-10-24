# leIdeal_map_algebraMap_eq_leSubmodule_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:629defef-3e4b-af17-c9f0-27af532f1b23",
  "kind": "lemma",
  "lexical_name": "leIdeal_map_algebraMap_eq_leSubmodule_min",
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
  "slug": "leideal-map-algebramap-eq-lesubmodule-min--879e756a394c3bc4df0d7546",
  "source": {
    "blob": "90c379ea5a1786c4f5786791ad9cf0acc50a3835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 432,
    "path": "GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879e756a394c3bc4df0d75464b803f177b37be553a09248bf0f135e95b6a3c44",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629defef-3e4b-af17-c9f0-27af532f1b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leIdeal_map_algebraMap_eq_leSubmodule_min {K : Type*} [Field K] (v : Valuation K Γ₀)
    (γ : Γ₀) :
    Submodule.map (Algebra.linearMap _ _) (leIdeal v γ) = leSubmodule v (min 1 γ) := by
  ext x
  simp only [Submodule.mem_map, mem_leIdeal_iff, Algebra.linearMap_apply, mem_leSubmodule_iff]
  constructor
  · rintro ⟨y, hy, rfl⟩
    rcases min_cases 1 γ with ⟨h, _⟩ | ⟨h, _⟩
    · rw [h]
      exact y.prop
    · rw [h]
      exact hy
  · intro hx
    rcases min_cases 1 γ with ⟨h, h'⟩ | ⟨h, h'⟩ <;> rw [h] at hx
    · exact ⟨⟨x, hx⟩, hx.trans h', rfl⟩
    · exact ⟨⟨x, hx.trans h'.le⟩, hx, rfl⟩

-- Ideally, this would follow from `leSubmodule_v_le_of_mem`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c379ea5a1786c4f5786791ad9cf0acc50a3835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
