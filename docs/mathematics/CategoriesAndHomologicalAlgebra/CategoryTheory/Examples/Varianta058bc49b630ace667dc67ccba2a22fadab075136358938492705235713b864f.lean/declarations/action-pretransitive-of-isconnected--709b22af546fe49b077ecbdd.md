# Action.pretransitive_of_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51b8c05b6c24110f3375d34cc6d18fd07f7f896d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:203fc096-93cc-f925-1019-2d68d39be96e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b329382a-ed64-e683-36b2-ca9216eaf40d",
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
  "slug": "action-pretransitive-of-isconnected--709b22af546fe49b077ecbdd",
  "source": {
    "blob": "51b8c05b6c24110f3375d34cc6d18fd07f7f896d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:709b22af546fe49b077ecbdd9e87e32abadad36ddbdd5afed29a062a8c91637f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b329382a-ed64-e683-36b2-ca9216eaf40d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Action.pretransitive_of_isConnected (X : Action FintypeCat G)
    [IsConnected X] : MulAction.IsPretransitive G X.V where
  exists_smul_eq x y := by
    /- We show that the `G`-orbit of `x` is a non-initial subobject of `X` and hence by
    connectedness, the orbit equals `X.V`. -/
    let T : Set X.V := MulAction.orbit G x
    have : Fintype T := Fintype.ofFinite T
    letI : MulAction G (FintypeCat.of T) := inferInstanceAs <| MulAction G ↑(MulAction.orbit G x)
    let T' : Action FintypeCat G := Action.FintypeCat.ofMulAction G (FintypeCat.of T)
    let i : T' ⟶ X := ⟨Subtype.val, fun _ ↦ rfl⟩
    have : Mono i := ConcreteCategory.mono_of_injective _ (Subtype.val_injective)
    have : IsIso i := by
      apply IsConnected.noTrivialComponent T' i
      apply (not_initial_iff_fiber_nonempty (Action.forget _ _) T').mpr
      exact Set.Nonempty.coe_sort (MulAction.orbit_nonempty x)
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Varianta058bc49b630ace667dc67ccba2a22fadab075136358938492705235713b864f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b8c05b6c24110f3375d34cc6d18fd07f7f896d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
