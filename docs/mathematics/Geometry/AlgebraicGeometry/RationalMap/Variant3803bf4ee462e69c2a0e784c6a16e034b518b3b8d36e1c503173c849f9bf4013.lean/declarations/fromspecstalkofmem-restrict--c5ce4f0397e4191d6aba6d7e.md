# fromSpecStalkOfMem_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f46dcf5-16bb-eb8b-1a48-f9b1ad3cbf13",
  "kind": "lemma",
  "lexical_name": "fromSpecStalkOfMem_restrict",
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
  "slug": "fromspecstalkofmem-restrict--c5ce4f0397e4191d6aba6d7e",
  "source": {
    "blob": "83be0fd853851132262d98d7926cfac92f5372f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ce4f0397e4191d6aba6d7e8cc1b14f9651e6834ef5db56c75c8098587801e4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f46dcf5-16bb-eb8b-1a48-f9b1ad3cbf13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromSpecStalkOfMem_restrict (f : X.PartialMap Y)
    {U : X.Opens} (hU : Dense (U : Set X)) (hU' : U ≤ f.domain) {x} (hx : x ∈ U) :
    (f.restrict U hU hU').fromSpecStalkOfMem hx = f.fromSpecStalkOfMem (hU' hx) := by
  dsimp only [fromSpecStalkOfMem, restrict, Scheme.Opens.fromSpecStalkOfMem]
  have e : ⟨x, hU' hx⟩ = (X.homOfLE hU').base ⟨x, hx⟩ := by
    rw [Scheme.homOfLE_base]
    rfl
  rw [Category.assoc, ← Spec_map_stalkMap_fromSpecStalk_assoc,
    ← Spec_map_stalkSpecializes_fromSpecStalk (Inseparable.of_eq e).specializes,
    ← TopCat.Presheaf.stalkCongr_inv _ (Inseparable.of_eq e)]
  simp only [← Category.assoc, ← Spec.map_comp]
  congr 3
  rw [Iso.eq_inv_comp, ← Category.assoc, IsIso.comp_inv_eq, IsIso.eq_inv_comp,
    stalkMap_congr_hom _ _ (X.homOfLE_ι hU').symm]
  simp only [restrictFunctor_obj_left, homOfLE_leOfHom, TopCat.Presheaf.stalkCongr_hom]
  rw [← stalkSpecializes_stalkMap_assoc, stalkMap_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variant3803bf4ee462e69c2a0e784c6a16e034b518b3b8d36e1c503173c849f9bf4013.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83be0fd853851132262d98d7926cfac92f5372f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
