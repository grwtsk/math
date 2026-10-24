# comp_inter_Icc_eq_of_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6c0986d-ea48-0cef-048b-06e2e0416ae4",
  "kind": "theorem",
  "lexical_name": "comp_inter_Icc_eq_of_monotoneOn",
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
  "slug": "comp-inter-icc-eq-of-monotoneon--d7cc032bd16b10d9485b6e31",
  "source": {
    "blob": "b6113d88eb9b6e6624402490680f712822dc8815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 542,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7cc032bd16b10d9485b6e31b1068093da3310700b07d319eb17fab7d4cfef43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c0986d-ea48-0cef-048b-06e2e0416ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_inter_Icc_eq_of_monotoneOn (f : α → E) {t : Set β} (φ : β → α) (hφ : MonotoneOn φ t)
    {x y : β} (hx : x ∈ t) (hy : y ∈ t) :
    eVariationOn (f ∘ φ) (t ∩ Icc x y) = eVariationOn f (φ '' t ∩ Icc (φ x) (φ y)) := by
  rcases le_total x y with (h | h)
  · convert! comp_eq_of_monotoneOn f φ (hφ.mono Set.inter_subset_left)
    apply le_antisymm
    · rintro _ ⟨⟨u, us, rfl⟩, vφx, vφy⟩
      rcases le_total x u with (xu | ux)
      · rcases le_total u y with (uy | yu)
        · exact ⟨u, ⟨us, ⟨xu, uy⟩⟩, rfl⟩
        · rw [le_antisymm vφy (hφ hy us yu)]
          exact ⟨y, ⟨hy, ⟨h, le_rfl⟩⟩, rfl⟩
      · rw [← le_antisymm vφx (hφ us hx ux)]
        exact ⟨x, ⟨hx, ⟨le_rfl, h⟩⟩, rfl⟩
    · rintro _ ⟨u, ⟨⟨hu, xu, uy⟩, rfl⟩⟩
      exact ⟨⟨u, hu, rfl⟩, ⟨hφ hx hu xu, hφ hu hy uy⟩⟩
  · rw [eVariationOn.subsingleton, eVariationOn.subsingleton]
    exacts [(Set.subsingleton_Icc_of_ge (hφ hy hx h)).anti Set.inter_subset_right,
      (Set.subsingleton_Icc_of_ge h).anti Set.inter_subset_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant77eea21f871c4ddd4193ab509d540428cbb164f274a06c354733130ef8af325a.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6113d88eb9b6e6624402490680f712822dc8815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
