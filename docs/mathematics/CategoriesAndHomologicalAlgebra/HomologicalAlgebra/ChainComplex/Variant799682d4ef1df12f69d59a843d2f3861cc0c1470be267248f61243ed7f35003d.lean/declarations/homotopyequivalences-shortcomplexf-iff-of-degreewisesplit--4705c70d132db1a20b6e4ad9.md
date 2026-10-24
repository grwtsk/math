# homotopyEquivalences_shortComplexF_iff_of_degreewiseSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:703734a4-1b7e-1904-5695-b17c892b40bc",
  "kind": "lemma",
  "lexical_name": "homotopyEquivalences_shortComplexF_iff_of_degreewiseSplit",
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
  "slug": "homotopyequivalences-shortcomplexf-iff-of-degreewisesplit--4705c70d132db1a20b6e4ad9",
  "source": {
    "blob": "25f9999b69dbf62bebd2000475ab1b928cbd4658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplex/Variant799682d4ef1df12f69d59a843d2f3861cc0c1470be267248f61243ed7f35003d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4705c70d132db1a20b6e4ad9752a4708ecb7daaf3fdec9bc5ec3b671644ffd16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplex/Variant799682d4ef1df12f69d59a843d2f3861cc0c1470be267248f61243ed7f35003d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:703734a4-1b7e-1904-5695-b17c892b40bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homotopyEquivalences_shortComplexF_iff_of_degreewiseSplit
    (σ : ∀ n, (S.map (eval _ _ n)).Splitting) :
    homotopyEquivalences _ _ S.f ↔ Nonempty (Homotopy (𝟙 S.X₃) 0) := by
  have := CochainComplex.homotopyEquivalences_shortComplexF_iff_of_splitting _
    (ComplexShape.embeddingDownNat.splittingExtend σ)
  simp only [ShortComplex.map_f, ComplexShape.Embedding.extendFunctor_map,
    homotopyEquivalences_extendMap_iff] at this
  rw [this]
  refine Equiv.nonempty_congr
    (Equiv.trans ?_ (Homotopy.extendEquiv ComplexShape.embeddingDownNat).symm)
  simp
  rfl

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplex/Variant799682d4ef1df12f69d59a843d2f3861cc0c1470be267248f61243ed7f35003d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ChainComplex/Variant799682d4ef1df12f69d59a843d2f3861cc0c1470be267248f61243ed7f35003d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f9999b69dbf62bebd2000475ab1b928cbd4658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
