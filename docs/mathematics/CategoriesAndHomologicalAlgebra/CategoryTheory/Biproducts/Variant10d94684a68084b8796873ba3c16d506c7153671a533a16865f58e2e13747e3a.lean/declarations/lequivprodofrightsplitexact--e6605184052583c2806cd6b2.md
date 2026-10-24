# lequivProdOfRightSplitExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:512ba4db04cb9a64ad6a6ef8de62e73e9bea680f51b16642de11bf45c03e1d09",
  "kind": "def",
  "lexical_name": "lequivProdOfRightSplitExact",
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
  "slug": "lequivprodofrightsplitexact--e6605184052583c2806cd6b2",
  "source": {
    "blob": "5fbfed547511bc767fc88ae03ed1e743c96cb433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6605184052583c2806cd6b233cd7800ee301053cae78dc13490a1d0162ae53a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:512ba4db04cb9a64ad6a6ef8de62e73e9bea680f51b16642de11bf45c03e1d09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lequivProdOfRightSplitExact {f : B →ₗ[R] M} (hj : Function.Injective j)
    (exac : LinearMap.range j = LinearMap.ker g) (h : g.comp f = LinearMap.id) : (A × B) ≃ₗ[R] M :=
  (({ right_split := ⟨ModuleCat.asHom f, h⟩
      mono := (ModuleCat.mono_iff_injective <| asHom j).mpr hj
      exact := (exact_iff _ _).mpr exac } : RightSplit _ _).splitting.iso.trans <|
    biprodIsoProd _ _).toLinearEquiv.symm
#align lequiv_prod_of_right_split_exact lequivProdOfRightSplitExact

/-- The isomorphism `A × B ≃ₗ[R] M` coming from a left split exact sequence `0 ⟶ A ⟶ M ⟶ B ⟶ 0`
of modules.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fbfed547511bc767fc88ae03ed1e743c96cb433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
