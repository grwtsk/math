# family_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c47bdf6d24b36ee4ca647662e14a0ba4e10c448",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6731a86-8633-79bd-4e6c-8e07aef1d152",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98ed5f01-9152-8f68-fdcd-fb645638e10b",
  "kind": "lemma",
  "lexical_name": "family_induction_on",
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
  "slug": "family-induction-on--27879c4d66205b6fc2b88ee1",
  "source": {
    "blob": "7c47bdf6d24b36ee4ca647662e14a0ba4e10c448",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27879c4d66205b6fc2b88ee13313024f0b4d0b6b16cf4bf0067bd0108b331392",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98ed5f01-9152-8f68-fdcd-fb645638e10b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma family_induction_on {p : Finset (Finset α) → Prop}
    (𝒜 : Finset (Finset α)) (empty : p ∅) (singleton_empty : p {∅})
    (image_insert : ∀ (a : α) ⦃𝒜 : Finset (Finset α)⦄,
      (∀ s ∈ 𝒜, a ∉ s) → p 𝒜 → p (𝒜.image <| insert a))
    (subfamily : ∀ (a : α) ⦃𝒜 : Finset (Finset α)⦄,
      p {s ∈ 𝒜 | a ∉ s} → p {s ∈ 𝒜 | a ∈ s} → p 𝒜) : p 𝒜 := by
  refine memberFamily_induction_on 𝒜 empty singleton_empty fun a 𝒜 h𝒜₀ h𝒜₁ ↦ subfamily a h𝒜₀ ?_
  rw [← image_insert_memberSubfamily]
  exact image_insert _ (by simp) h𝒜₁

end Finset

open Finset

-- The namespace is here to distinguish from other compressions.
namespace Down

/-- `a`-down-compressing `𝒜` means removing `a` from the elements of `𝒜` that contain it, when the
resulting Finset is not already in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantf9832f2e8bffedd85907a72a58e35dab6db6a1d7bdc6bc3eab05be50392604e6.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c47bdf6d24b36ee4ca647662e14a0ba4e10c448` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
