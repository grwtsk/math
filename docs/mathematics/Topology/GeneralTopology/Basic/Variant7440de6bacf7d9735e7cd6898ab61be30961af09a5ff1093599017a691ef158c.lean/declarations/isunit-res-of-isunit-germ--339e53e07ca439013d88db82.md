# isUnit_res_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13162cc7c9de50a2bc53b974530bb889fc2dc3c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a83115c0-cebe-a95e-7e7f-48d0ce44afe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:651c4675-bba6-c87a-d2ab-a4c3a3fb365d",
  "kind": "theorem",
  "lexical_name": "isUnit_res_of_isUnit_germ",
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
  "slug": "isunit-res-of-isunit-germ--339e53e07ca439013d88db82",
  "source": {
    "blob": "13162cc7c9de50a2bc53b974530bb889fc2dc3c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:339e53e07ca439013d88db82d82955d46d2da9463eb796d434d9f7f7bad480a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:651c4675-bba6-c87a-d2ab-a4c3a3fb365d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_res_of_isUnit_germ (U : Opens X) (f : X.presheaf.obj (op U)) (x : X) (hx : x ∈ U)
    (h : IsUnit (X.presheaf.germ U x hx f)) :
    ∃ (V : Opens X) (i : V ⟶ U) (_ : x ∈ V), IsUnit (X.presheaf.map i.op f) := by
  obtain ⟨g', heq⟩ := h.exists_right_inv
  obtain ⟨V, hxV, g, rfl⟩ := X.presheaf.germ_exist x g'
  let W := U ⊓ V
  have hxW : x ∈ W := ⟨hx, hxV⟩
  -- Porting note: `erw` can't write into `HEq`, so this is replaced with another `HEq` in the
  -- desired form
  replace heq : (X.presheaf.germ _ x hxW) ((X.presheaf.map (U.infLELeft V).op) f *
      (X.presheaf.map (U.infLERight V).op) g) = (X.presheaf.germ _ x hxW) 1 := by
    dsimp [germ]
    erw [map_mul, map_one, show X.presheaf.germ _ x hxW ((X.presheaf.map (U.infLELeft V).op) f) =
      X.presheaf.germ U x hx f from X.presheaf.germ_res_apply (Opens.infLELeft U V) x hxW f,
      show X.presheaf.germ _ x hxW (X.presheaf.map (U.infLERight V).op g) =
      X.presheaf.germ _ x hxV g from X.presheaf.germ_res_apply (Opens.infLERight U V) x hxW g]
    exact heq
  -- note: we have to force lean to resynthesize this as <...>.hom _ = <...>.hom _
  obtain ⟨W', hxW', i₁, i₂, (heq' : (X.presheaf.map i₁.op) _ = (X.presheaf.map i₂.op) 1)⟩ :=
    X.presheaf.germ_eq x hxW hxW _ _ heq
  use W', i₁ ≫ Opens.infLELeft U V, hxW'
  simp only [map_mul, map_one] at heq'
  simpa using isUnit_of_mul_eq_one _ _ heq'

@[deprecated (since := "2025-02-08")] alias _root_.CommRingCat.germ_res_apply := germ_res_apply
@[deprecated (since := "2025-02-08")] alias _root_.CommRingCat.germ_res_apply' := germ_res_apply'

/-- If a section `f` is a unit in each stalk, `f` must be a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13162cc7c9de50a2bc53b974530bb889fc2dc3c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
