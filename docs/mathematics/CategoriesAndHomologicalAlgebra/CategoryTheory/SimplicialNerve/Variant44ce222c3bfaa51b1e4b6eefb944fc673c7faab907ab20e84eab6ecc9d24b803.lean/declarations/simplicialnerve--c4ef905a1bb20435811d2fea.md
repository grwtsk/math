# SimplicialNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98d087c4e144fc6dc0589337c9aeeb81f16cc88c86f8c14914d13b26a08a8fd0",
  "kind": "def",
  "lexical_name": "SimplicialNerve",
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
  "slug": "simplicialnerve--c4ef905a1bb20435811d2fea",
  "source": {
    "blob": "6f25f19e1d6c79c5d17a410f7730c33cc0f1adc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 191,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4ef905a1bb20435811d2fea8ce99caaad4c5e862adf53bc1d8dc4a8b173e79a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98d087c4e144fc6dc0589337c9aeeb81f16cc88c86f8c14914d13b26a08a8fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SimplicialNerve (C : Type u) [Category.{v} C] [SimplicialCategory C] :
    SSet.{max u v} where
  obj n := EnrichedFunctor SSet (SimplicialThickening (ULift (Fin (n.unop.len + 1)))) C
  map f := ↾((SimplicialThickening.functor f.unop.toOrderHom.uliftMap).comp
    (E := C) SSet)
  map_id i := by
    ext
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor OrderHom.id) _ = _
    rw [SimplicialThickening.functor_id]
    rfl
  map_comp f g := by
    ext
    change EnrichedFunctor.comp SSet (SimplicialThickening.functor
      (f.unop.toOrderHom.uliftMap.comp g.unop.toOrderHom.uliftMap)) _ = _
    rw [SimplicialThickening.functor_comp]
    rfl

end SimplicialNerve

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant44ce222c3bfaa51b1e4b6eefb944fc673c7faab907ab20e84eab6ecc9d24b803.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f25f19e1d6c79c5d17a410f7730c33cc0f1adc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
