# homologyFunctor_shiftMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c4dedc2-15ca-95b8-d453-423485992341",
  "kind": "lemma",
  "lexical_name": "homologyFunctor_shiftMap",
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
  "slug": "homologyfunctor-shiftmap--ebe6a65ed7f5e703f7d0a9c6",
  "source": {
    "blob": "ad48080a627749c3bcfd9fe4e877ccb9b4e854ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebe6a65ed7f5e703f7d0a9c6dc8b3509b8f503e1d9fb5818a4b3f10140383164",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c4dedc2-15ca-95b8-d453-423485992341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologyFunctor_shiftMap
    {K L : CochainComplex C ℤ} {n : ℤ} (f : K ⟶ L⟦n⟧) (a a' : ℤ) (h : n + a = a') :
    (homologyFunctor C (ComplexShape.up ℤ) 0).shiftMap
      ((quotient _ _).map f ≫ ((quotient _ _).commShiftIso n).hom.app _) a a' h =
        (homologyFunctorFactors _ _ a).hom.app K ≫
          (HomologicalComplex.homologyFunctor C (ComplexShape.up ℤ) 0).shiftMap f a a' h ≫
            (homologyFunctorFactors _ _ a').inv.app L := by
  apply Functor.ShiftSequence.induced_shiftMap

end HomotopyCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShiftSequence/Variant8af10d0011af1bd4e55580f503745b866f480a122dc9eda7a8c7115add2639b5.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad48080a627749c3bcfd9fe4e877ccb9b4e854ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
