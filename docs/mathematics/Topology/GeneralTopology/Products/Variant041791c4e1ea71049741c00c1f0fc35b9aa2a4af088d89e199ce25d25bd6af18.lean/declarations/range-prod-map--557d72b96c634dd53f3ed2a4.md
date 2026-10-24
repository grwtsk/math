# range_prod_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49c6249845f29829fac76e9824b6b43dce1ba8f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 248,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f98eb1a6-d9da-117b-55f4-a388f6883b6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21f89ee1-58e9-dd31-f2e8-6c0b12f2ae20",
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
  "slug": "range-prod-map--557d72b96c634dd53f3ed2a4",
  "source": {
    "blob": "49c6249845f29829fac76e9824b6b43dce1ba8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 248,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557d72b96c634dd53f3ed2a443544441689607f9b680b1218c651bc79c5440f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f89ee1-58e9-dd31-f2e8-6c0b12f2ae20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_prod_map {W X Y Z : TopCat.{u}} (f : W ⟶ Y) (g : X ⟶ Z) :
    Set.range (Limits.prod.map f g) =
      (Limits.prod.fst : Y ⨯ Z ⟶ _) ⁻¹' Set.range f ∩
        (Limits.prod.snd : Y ⨯ Z ⟶ _) ⁻¹' Set.range g := by
  ext x
  constructor
  · rintro ⟨y, rfl⟩
    simp only [Set.mem_preimage, Set.mem_range, Set.mem_inter_iff, ← comp_apply]
    simp only [Limits.prod.map_fst, Limits.prod.map_snd, exists_apply_eq_apply, comp_apply,
      and_self_iff]
  · rintro ⟨⟨x₁, hx₁⟩, ⟨x₂, hx₂⟩⟩
    use (prodIsoProd W X).inv (x₁, x₂)
    apply Concrete.limit_ext
    rintro ⟨⟨⟩⟩
    · simp only [← comp_apply, Category.assoc]
      erw [Limits.prod.map_fst]
      rw [TopCat.prodIsoProd_inv_fst_assoc,TopCat.comp_app]
      exact hx₁
    · simp only [← comp_apply, Category.assoc]
      erw [Limits.prod.map_snd]
      rw [TopCat.prodIsoProd_inv_snd_assoc,TopCat.comp_app]
      exact hx₂
#align Top.range_prod_map TopCat.range_prod_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c6249845f29829fac76e9824b6b43dce1ba8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
