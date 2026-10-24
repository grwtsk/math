# mop_isMonHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c67d77692e957eaab98bc58ea3811066cb276c3a7dc7abb5d566157f0a2801e3",
  "kind": "instance",
  "lexical_name": "mop_isMonHom",
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
  "slug": "mop-ismonhom--bd6823ede0953ba60f0691ae",
  "source": {
    "blob": "b01fa90ea94195ce94ec21d267aa0fa038b78e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantac11ac3451a113bae0a6f42a3be183da31e87db48606dd04023459c9d5fbbc63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd6823ede0953ba60f0691ae6350b835d3149153d127276e6a52cc4aac9a0d39",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantac11ac3451a113bae0a6f42a3be183da31e87db48606dd04023459c9d5fbbc63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c67d77692e957eaab98bc58ea3811066cb276c3a7dc7abb5d566157f0a2801e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mop_isMonHom {N : C} [MonObj N]
    (f : M ⟶ N) [IsMonHom f] : IsMonHom f.mop where
  mul_hom := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simpa [-IsMonHom.mul_hom] using! IsMonHom.mul_hom f
  one_hom := by
    apply mopEquiv C |>.fullyFaithfulInverse.map_injective
    simpa [-IsMonHom.one_hom] using! IsMonHom.one_hom f

end mop

section unmop

variable (M : Cᴹᵒᵖ) [MonObj M]

set_option backward.defeqAttrib.useBackward true in
/-- If `M : Cᴹᵒᵖ` is a monoid object, then `unmop M : C` too. -/
@[simps -isSimp] -- not making them simp because it causes a loop.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantac11ac3451a113bae0a6f42a3be183da31e87db48606dd04023459c9d5fbbc63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variantac11ac3451a113bae0a6f42a3be183da31e87db48606dd04023459c9d5fbbc63.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01fa90ea94195ce94ec21d267aa0fa038b78e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
