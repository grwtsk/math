# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0730c0a357bdec1ba7cabbf1a6cd46b8cfbfa5f5d6c780d55921767aaa4b73f4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8b57eb62a53e22a40aeea399",
  "source": {
    "blob": "d63d45e14597b62f4cd0321c105724a3aedd6213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b57eb62a53e22a40aeea399cdace23a84ed5f5ce1a429e1ca8fb342adc495c5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0730c0a357bdec1ba7cabbf1a6cd46b8cfbfa5f5d6c780d55921767aaa4b73f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Functor.Final (pairwiseToOpensLeCover U) :=
  ⟨fun V =>
    isConnected_of_zigzag fun A B => by
      rcases A with ⟨⟨⟨⟩⟩, ⟨i⟩ | ⟨i, j⟩, a⟩ <;> rcases B with ⟨⟨⟨⟩⟩, ⟨i'⟩ | ⟨i', j'⟩, b⟩
      · refine'
          ⟨[{   left := ⟨⟨⟩⟩
                right := pair i i'
                hom := (le_inf a.le b.le).hom }, _], _, rfl⟩
        exact
          List.Chain.cons
            (Or.inr
              ⟨{  left := 𝟙 _
                  right := left i i' }⟩)
            (List.Chain.cons
              (Or.inl
                ⟨{  left := 𝟙 _
                    right := right i i' }⟩)
              List.Chain.nil)
      · refine'
          ⟨[{   left := ⟨⟨⟩⟩
                right := pair i' i
                hom := (le_inf (b.le.trans inf_le_left) a.le).hom },
              { left := ⟨⟨⟩⟩
                right := single i'
                hom := (b.le.trans inf_le_left).hom }, _], _, rfl⟩
        exact
          List.Chain.cons
            (Or.inr
              ⟨{  left := 𝟙 _
                  right := right i' i }⟩)
            (List.Chain.cons
              (Or.inl
                ⟨{  left := 𝟙 _
                    right := left i' i }⟩)
              (List.Chain.cons
                (Or.inr
                  ⟨{  left := 𝟙 _
                      right := left i' j' }⟩)
                List.Chain.nil))
      · refine'
          ⟨[{   left := ⟨⟨⟩⟩
                right := single i
                hom := (a.le.trans inf_le_left).hom },
              { left := ⟨⟨⟩⟩
                right := pair i i'
                hom := (le_inf (a.le.trans inf_le_left) b.le).hom }, _], _, rfl⟩
        exact
          List.Chain.cons
            (Or.inl
              ⟨{  left := 𝟙 _
                  right := left i j }⟩)
            (List.Chain.cons
              (Or.inr
                ⟨{  left := 𝟙 _
                    right := left i i' }⟩)
              (List.Chain.cons
                (Or.inl
                  ⟨{  left := 𝟙 _
                      right := right i i' }⟩)
                List.Chain.nil))
      · refine'
          ⟨[{   left := ⟨⟨⟩⟩
                right := single i
                hom := (a.le.trans inf_le_left).hom },
              { left := ⟨⟨⟩⟩
                right := pair i i'
                hom := (le_inf (a.le.trans inf_le_left) (b.le.trans inf_le_left)).hom },
              { left := ⟨⟨⟩⟩
                right := single i'
                hom := (b.le.trans inf_le_left).hom }, _], _, rfl⟩
        exact
          List.Chain.cons
            (Or.inl
              ⟨{  left := 𝟙 _
                  right := left i j }⟩)
            (List.Chain.cons
              (Or.inr
                ⟨{  left := 𝟙 _
                    right := left i i' }⟩)
              (List.Chain.cons
                (Or.inl
                  ⟨{  left := 𝟙 _
                      right := right i i' }⟩)
                (List.Chain.cons
                  (Or.inr
                    ⟨{  left := 𝟙 _
                        right := left i' j' }⟩)
                  List.Chain.nil)))⟩

/-- The diagram in `opens X` indexed by pairwise intersections from `U` is isomorphic
(in fact, equal) to the diagram factored through `opens_le_cover U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant7dbd1001cd5e0e3c2dfef3f71a0be936aeafdd0510d71e7c4ca4dfc33c5c6742.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63d45e14597b62f4cd0321c105724a3aedd6213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
