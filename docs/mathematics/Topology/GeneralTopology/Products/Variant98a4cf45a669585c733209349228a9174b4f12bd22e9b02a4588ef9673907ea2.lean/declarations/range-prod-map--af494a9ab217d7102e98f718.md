# range_prod_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0354174-21c9-16fd-9c87-aecddc3f34db",
  "kind": "theorem",
  "lexical_name": "range_prod_map",
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
  "slug": "range-prod-map--af494a9ab217d7102e98f718",
  "source": {
    "blob": "9c64e66c24f75ba22787954cea811d87b09e00f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af494a9ab217d7102e98f71835dc2b74bef73a39e227d0df2092b0c9e947b472",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0354174-21c9-16fd-9c87-aecddc3f34db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_prod_map {W X Y Z : TopCat.{u}} (f : W ⟶ Y) (g : X ⟶ Z) :
    Set.range (Limits.prod.map f g) =
      (Limits.prod.fst : Y ⨯ Z ⟶ _) ⁻¹' Set.range f ∩
        (Limits.prod.snd : Y ⨯ Z ⟶ _) ⁻¹' Set.range g := by
  ext x
  constructor
  · rintro ⟨y, rfl⟩
    simp_rw [Set.mem_inter_iff, Set.mem_preimage, Set.mem_range, ← ConcreteCategory.comp_apply,
      Limits.prod.map_fst, Limits.prod.map_snd, ConcreteCategory.comp_apply, exists_apply_eq_apply,
      and_self_iff]
  · rintro ⟨⟨x₁, hx₁⟩, ⟨x₂, hx₂⟩⟩
    use (prodIsoProd W X).inv (x₁, x₂)
    apply Concrete.limit_ext
    rintro ⟨⟨⟩⟩
    · rw [← ConcreteCategory.comp_apply]
      erw [Limits.prod.map_fst]
      rw [ConcreteCategory.comp_apply, TopCat.prodIsoProd_inv_fst_apply]
      exact hx₁
    · rw [← ConcreteCategory.comp_apply]
      erw [Limits.prod.map_snd]
      rw [ConcreteCategory.comp_apply, TopCat.prodIsoProd_inv_snd_apply]
      exact hx₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c64e66c24f75ba22787954cea811d87b09e00f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
