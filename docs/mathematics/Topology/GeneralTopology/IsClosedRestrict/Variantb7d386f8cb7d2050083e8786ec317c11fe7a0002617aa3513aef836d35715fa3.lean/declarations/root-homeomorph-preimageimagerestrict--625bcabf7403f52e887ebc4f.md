# _root_.Homeomorph.preimageImageRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b5b154d466564be5cd09bc9e5ff5469bac2b99a06242f0646a75f563ef96699",
  "kind": "def",
  "lexical_name": "_root_.Homeomorph.preimageImageRestrict",
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
  "slug": "root-homeomorph-preimageimagerestrict--625bcabf7403f52e887ebc4f",
  "source": {
    "blob": "02b7ea6e540e2392f3c4e13f1fbf60bffced093e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:625bcabf7403f52e887ebc4fcf890e3a88fa050017e1fcd1749989079632b499",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b5b154d466564be5cd09bc9e5ff5469bac2b99a06242f0646a75f563ef96699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Homeomorph.preimageImageRestrict (α : ι → Type*) [∀ i, TopologicalSpace (α i)]
    (S : Set ι) (s : Set (Π j, α j)) :
    Sᶜ.restrict ⁻¹' (Sᶜ.restrict '' s) ≃ₜ Sᶜ.restrict '' s × (Π i : S, α i) where
  toFun x := ⟨⟨Sᶜ.restrict x, x.2⟩, fun i ↦ (x : Π j, α j) i⟩
  invFun p := ⟨reorderRestrictProd S s p, reorderRestrictProd_mem_preimage_image_restrict p⟩
  left_inv x := by ext; simp
  right_inv p := by ext <;> simp
  continuous_toFun := by
    refine Continuous.prodMk ?_ ?_
    · exact ((Pi.continuous_restrict _).comp continuous_subtype_val).subtype_mk _
    · rw [continuous_pi_iff]
      exact fun _ ↦ (continuous_apply _).comp continuous_subtype_val
  continuous_invFun := continuous_reorderRestrictProd.subtype_mk _

/-- The image by `preimageImageRestrict α S s` of `s` seen as a set of
`Sᶜ.restrict ⁻¹' (Sᶜ.restrict '' s)` is a set of `Sᶜ.restrict '' s × (Π i : S, α i)`, and the
image of that set by `Prod.snd` is `S.restrict '' s`.

Used in `IsCompact.isClosed_image_restrict` to prove that the restriction of a compact closed set
in a product space to a set of coordinates is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantb7d386f8cb7d2050083e8786ec317c11fe7a0002617aa3513aef836d35715fa3.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02b7ea6e540e2392f3c4e13f1fbf60bffced093e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
