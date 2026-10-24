# Action.pretransitive_of_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "398bbd3e61dcbd960ea0570ff94aae2f60cd16bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be30f56ff2a11d820ba6390795d81146af7e2537188664ed2bc7108804930fcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9007cff2-b312-c5d4-34a8-b0298570192a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:582a6d82-8afd-9837-e46e-e4119e5c811d",
  "kind": "theorem",
  "lexical_name": "Action.pretransitive_of_isConnected",
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
  "slug": "action-pretransitive-of-isconnected--fdc0150b61c5a48c5ff108e9",
  "source": {
    "blob": "398bbd3e61dcbd960ea0570ff94aae2f60cd16bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variantbe30f56ff2a11d820ba6390795d81146af7e2537188664ed2bc7108804930fcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc0150b61c5a48c5ff108e980a0150fa5c54ead0c5dfbf848d5c784323c193f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variantbe30f56ff2a11d820ba6390795d81146af7e2537188664ed2bc7108804930fcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:582a6d82-8afd-9837-e46e-e4119e5c811d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Action.pretransitive_of_isConnected (X : Action FintypeCat G)
    [PreGaloisCategory.IsConnected X] : MulAction.IsPretransitive G X.V where
  exists_smul_eq x y := by
    /- We show that the `G`-orbit of `x` is a non-initial subobject of `X` and hence by
    connectedness, the orbit equals `X.V`. -/
    let T : Set X.V := MulAction.orbit G x
    have : Fintype T := Fintype.ofFinite T
    let : MulAction G (FintypeCat.of T) := inferInstanceAs <| MulAction G
      ↑(MulAction.orbit G x)
    let T' : Action FintypeCat G := Action.FintypeCat.ofMulAction G ↧T
    let i : T' ⟶ X := ⟨FintypeCat.homMk Subtype.val, fun _ ↦ rfl⟩
    have : Mono i := ConcreteCategory.mono_of_injective _ (Subtype.val_injective)
    have : IsIso i := by
      apply IsConnected.noTrivialComponent T' i
      apply (not_initial_iff_fiber_nonempty (Action.forget _ _) T').mpr
      exact Set.Nonempty.coe_sort (MulAction.nonempty_orbit x)
    have hb : Function.Bijective i.hom := by
      apply (ConcreteCategory.isIso_iff_bijective i.hom).mp
      exact map_isIso (forget₂ _ FintypeCat) i
    obtain ⟨⟨y', ⟨g, (hg : g • x = y')⟩⟩, (hy' : y' = y)⟩ := hb.surjective y
    use g
    exact hg.trans hy'

/-- A nonempty `G`-set with transitive `G`-action is connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variantbe30f56ff2a11d820ba6390795d81146af7e2537188664ed2bc7108804930fcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variantbe30f56ff2a11d820ba6390795d81146af7e2537188664ed2bc7108804930fcc.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398bbd3e61dcbd960ea0570ff94aae2f60cd16bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
