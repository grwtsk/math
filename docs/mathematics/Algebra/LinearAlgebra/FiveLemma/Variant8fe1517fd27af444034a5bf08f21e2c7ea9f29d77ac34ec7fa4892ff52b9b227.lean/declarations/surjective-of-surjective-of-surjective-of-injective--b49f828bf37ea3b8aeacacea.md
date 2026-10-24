# surjective_of_surjective_of_surjective_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b3d0091b4664be99f7e37595f02090fb8d1ed6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35e5a424-12e3-3052-11b7-098c065ccb19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1108f71-1a67-1584-c86a-90c148abd169",
  "kind": "lemma",
  "lexical_name": "surjective_of_surjective_of_surjective_of_injective",
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
  "slug": "surjective-of-surjective-of-surjective-of-injective--b49f828bf37ea3b8aeacacea",
  "source": {
    "blob": "1b3d0091b4664be99f7e37595f02090fb8d1ed6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b49f828bf37ea3b8aeacacea36acc77b674d6e59790852454b3780d3b81a373f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1108f71-1a67-1584-c86a-90c148abd169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_of_surjective_of_surjective_of_injective (hi₁ : Function.Surjective i₁)
    (hi₃ : Function.Surjective i₃) (hi₄ : Function.Injective i₄) :
    Function.Surjective i₂ := by
  intro x
  obtain ⟨y, hy⟩ := hi₃ (g₂ x)
  obtain ⟨a, rfl⟩ : y ∈ Set.range f₂ := (hf₂ _).mp <| by
    simpa [hy, hg₂.apply_apply_eq_zero, map_eq_zero_iff _ hi₄] using (DFunLike.congr_fun hc₃ y).symm
  obtain ⟨b, hb⟩ : x - i₂ a ∈ Set.range g₁ := (hg₁ _).mp <| by
    simp [← hy, show g₂ (i₂ a) = i₃ (f₂ a) by simpa using DFunLike.congr_fun hc₂ a]
  obtain ⟨o, rfl⟩ := hi₁ b
  use f₁ o + a
  simp [← show g₁ (i₁ o) = i₂ (f₁ o) by simpa using DFunLike.congr_fun hc₁ o, hb]

include hf₁ hf₂ hg₁ hc₁ hc₂ hc₃ in
/-- One four lemma in terms of (additive) groups. For a diagram explaining the variables,
see the module docstring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiveLemma/Variant8fe1517fd27af444034a5bf08f21e2c7ea9f29d77ac34ec7fa4892ff52b9b227.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b3d0091b4664be99f7e37595f02090fb8d1ed6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
