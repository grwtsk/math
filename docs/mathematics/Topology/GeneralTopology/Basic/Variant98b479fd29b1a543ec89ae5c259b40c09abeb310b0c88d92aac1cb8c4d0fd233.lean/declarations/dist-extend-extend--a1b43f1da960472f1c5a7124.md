# dist_extend_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62f9395e-ecaa-c780-f36e-4885503af629",
  "kind": "theorem",
  "lexical_name": "dist_extend_extend",
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
  "slug": "dist-extend-extend--a1b43f1da960472f1c5a7124",
  "source": {
    "blob": "77cc4bca6fcb8e95aeecf896bb413fc08a18c905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 445,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b43f1da960472f1c5a7124fc5ea5757a9b1ca89fb267b028176eec105483b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62f9395e-ecaa-c780-f36e-4885503af629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_extend_extend (f : α ↪ δ) (g₁ g₂ : α →ᵇ β) (h₁ h₂ : δ →ᵇ β) :
    dist (g₁.extend f h₁) (g₂.extend f h₂) =
      max (dist g₁ g₂) (dist (h₁.domRestrict (range f)ᶜ) (h₂.domRestrict (range f)ᶜ)) := by
  refine le_antisymm ((dist_le <| le_max_iff.2 <| Or.inl dist_nonneg).2 fun x => ?_) (max_le ?_ ?_)
  · rcases em (∃ y, f y = x) with (⟨x, rfl⟩ | hx)
    · simp only [extend_apply]
      exact (dist_coe_le_dist x).trans (le_max_left _ _)
    · simp only [extend_apply' hx]
      lift x to ((range f)ᶜ : Set δ) using hx
      calc
        dist (h₁ x) (h₂ x) = dist (h₁.domRestrict (range f)ᶜ x) (h₂.domRestrict (range f)ᶜ x) := rfl
        _ ≤ dist (h₁.domRestrict (range f)ᶜ) (h₂.domRestrict (range f)ᶜ) := dist_coe_le_dist x
        _ ≤ _ := le_max_right _ _
  · refine (dist_le dist_nonneg).2 fun x => ?_
    rw [← extend_apply f g₁ h₁, ← extend_apply f g₂ h₂]
    exact dist_coe_le_dist _
  · refine (dist_le dist_nonneg).2 fun x => ?_
    calc
      dist (h₁ x) (h₂ x) = dist (extend f g₁ h₁ x) (extend f g₂ h₂ x) := by
        rw [extend_apply' x.coe_prop, extend_apply' x.coe_prop]
      _ ≤ _ := dist_coe_le_dist _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cc4bca6fcb8e95aeecf896bb413fc08a18c905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
