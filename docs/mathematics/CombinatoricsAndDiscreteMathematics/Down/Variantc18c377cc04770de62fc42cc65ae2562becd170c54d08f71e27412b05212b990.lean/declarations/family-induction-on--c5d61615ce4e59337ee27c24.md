# family_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91a40d8d-8ec8-edf6-ddf6-aaf3e3c2a643",
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
  "slug": "family-induction-on--c5d61615ce4e59337ee27c24",
  "source": {
    "blob": "9e5c161ed6a5d5cd4f75f303c9df4715c577a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d61615ce4e59337ee27c24376ea4bdf510090c13dd0e575c899fcaa7d1cf86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91a40d8d-8ec8-edf6-ddf6-aaf3e3c2a643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–223.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantc18c377cc04770de62fc42cc65ae2562becd170c54d08f71e27412b05212b990.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e5c161ed6a5d5cd4f75f303c9df4715c577a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
