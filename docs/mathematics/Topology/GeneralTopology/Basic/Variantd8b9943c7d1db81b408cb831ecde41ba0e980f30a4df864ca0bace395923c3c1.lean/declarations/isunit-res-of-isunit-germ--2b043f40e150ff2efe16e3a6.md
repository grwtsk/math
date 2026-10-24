# isUnit_res_of_isUnit_germ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21e24a3d-7454-d8b4-a9c9-bd2e47cad68f",
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
  "slug": "isunit-res-of-isunit-germ--2b043f40e150ff2efe16e3a6",
  "source": {
    "blob": "e97b889528b70e65374a15e4996c95126191254a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b043f40e150ff2efe16e3a6b1ff8839471c330fbd9259977f570839a6e04772",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21e24a3d-7454-d8b4-a9c9-bd2e47cad68f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_res_of_isUnit_germ (U : Opens X) (f : X.presheaf.obj (op U)) (x : X) (hx : x ∈ U)
    (h : IsUnit (X.presheaf.germ U x hx f)) :
    ∃ (V : Opens X) (i : V ⟶ U) (_ : x ∈ V), IsUnit (X.presheaf.map i.op f) := by
  obtain ⟨g', heq⟩ := h.exists_right_inv
  obtain ⟨V, hxV, g, rfl⟩ := X.presheaf.exists_germ_eq g'
  let W := U ⊓ V
  have hxW : x ∈ W := ⟨hx, hxV⟩
  replace heq : (X.presheaf.germ _ x hxW) ((X.presheaf.map (U.infLELeft V).op) f *
      (X.presheaf.map (U.infLERight V).op) g) = (X.presheaf.germ _ x hxW) 1 := by
    rwa [map_mul, map_one, X.presheaf.germ_res_apply (Opens.infLELeft U V) x hxW f,
      X.presheaf.germ_res_apply (Opens.infLERight U V) x hxW g]
  obtain ⟨W', hxW', i₁, i₂, heq'⟩ := X.presheaf.germ_eq x hxW hxW _ _ heq
  use W', i₁ ≫ Opens.infLELeft U V, hxW'
  simp only [map_mul, map_one] at heq'
  simpa using .of_mul_eq_one _ heq'

set_option backward.isDefEq.respectTransparency false in
/-- If a section `f` is a unit in each stalk, `f` must be a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e97b889528b70e65374a15e4996c95126191254a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
