# parallel_iff_direction_eq_and_eq_bot_iff_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ee67903-0b2b-9a65-ab6c-ce14812f710b",
  "kind": "theorem",
  "lexical_name": "parallel_iff_direction_eq_and_eq_bot_iff_eq_bot",
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
  "slug": "parallel-iff-direction-eq-and-eq-bot-iff-eq-bot--b273d89bec572a1cbf02687d",
  "source": {
    "blob": "8de1be405ca81df88563402e29d7e86c1fbd5f16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 965,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b273d89bec572a1cbf02687d9fd7d0354b12e754fc21b984634eeff5c70688be",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ee67903-0b2b-9a65-ab6c-ce14812f710b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 965–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallel_iff_direction_eq_and_eq_bot_iff_eq_bot {s₁ s₂ : AffineSubspace k P} :
    s₁ ∥ s₂ ↔ s₁.direction = s₂.direction ∧ (s₁ = ⊥ ↔ s₂ = ⊥) := by
  refine ⟨fun h => ⟨h.direction_eq, ?_, ?_⟩, fun h => ?_⟩
  · rintro rfl
    exact bot_parallel_iff_eq_bot.1 h
  · rintro rfl
    exact parallel_bot_iff_eq_bot.1 h
  · rcases h with ⟨hd, hb⟩
    by_cases hs₁ : s₁ = ⊥
    · rw [hs₁, bot_parallel_iff_eq_bot]
      exact hb.1 hs₁
    · have hs₂ : s₂ ≠ ⊥ := hb.not.1 hs₁
      rcases (nonempty_iff_ne_bot s₁).2 hs₁ with ⟨p₁, hp₁⟩
      rcases (nonempty_iff_ne_bot s₂).2 hs₂ with ⟨p₂, hp₂⟩
      refine ⟨p₂ -ᵥ p₁, (eq_iff_direction_eq_of_mem hp₂ ?_).2 ?_⟩
      · rw [mem_map]
        refine ⟨p₁, hp₁, ?_⟩
        simp
      · simpa using hd.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant35a1e2e6159dc61eee1fa58b2d564bde846827f7d105e6852a5df6d9d73b7c2f.lean#L965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de1be405ca81df88563402e29d7e86c1fbd5f16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
