# EnrichedOrdinaryCategory.opposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50e634996002c8b0756b2ed5fc9b98140f29a48f96b7c148a841cd3bd81f815a",
  "kind": "instance",
  "lexical_name": "EnrichedOrdinaryCategory.opposite",
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
  "slug": "enrichedordinarycategory-opposite--c08c48a59148a64a7eba392f",
  "source": {
    "blob": "9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c08c48a59148a64a7eba392f6f113796f92eb7ce9665646c1221a0b61d8977c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50e634996002c8b0756b2ed5fc9b98140f29a48f96b7c148a841cd3bd81f815a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance EnrichedOrdinaryCategory.opposite {D : Type u} [Category.{v} D]
    [EnrichedOrdinaryCategory V D] : EnrichedOrdinaryCategory V Dᵒᵖ where
  homEquiv := Quiver.Hom.opEquiv.symm.trans homEquiv
  homEquiv_id x := homEquiv_id (x.unop)
  homEquiv_comp f g := by
    simp only [unop_comp, tensorHom_eComp_op_eq, leftUnitor_inv_braiding_assoc, ← unitors_inv_equal]
    exact homEquiv_comp g.unop f.unop

end

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant563b20c8270f218186c23603065152ed9fb80743ee2d39b1a0ad55b19f3de003.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdba58c71ba2a38ad3b6c3ca179dd95adb5a28d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
