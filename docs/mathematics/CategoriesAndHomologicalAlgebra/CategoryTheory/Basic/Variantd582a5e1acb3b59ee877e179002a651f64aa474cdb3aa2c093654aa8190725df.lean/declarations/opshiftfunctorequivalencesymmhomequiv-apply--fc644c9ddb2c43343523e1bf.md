# opShiftFunctorEquivalenceSymmHomEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2051a88-2636-1972-ded7-5d1dad63dc63",
  "kind": "lemma",
  "lexical_name": "opShiftFunctorEquivalenceSymmHomEquiv_apply",
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
  "slug": "opshiftfunctorequivalencesymmhomequiv-apply--fc644c9ddb2c43343523e1bf",
  "source": {
    "blob": "4f6c9112e2f6295e85523a7493438ce7053ee208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 364,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc644c9ddb2c43343523e1bf669129317d99fa9dc12d1a25c1ed6d8be7fff7d7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2051a88-2636-1972-ded7-5d1dad63dc63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opShiftFunctorEquivalenceSymmHomEquiv_apply {n : ℤ} {X Y : Cᵒᵖ}
    (f : Opposite.op (X.unop⟦n⟧) ⟶ Y) :
    opShiftFunctorEquivalenceSymmHomEquiv f =
      (opShiftFunctorEquivalence C n).counitIso.inv.app X ≫ (shiftFunctor Cᵒᵖ n).map f := rfl

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd582a5e1acb3b59ee877e179002a651f64aa474cdb3aa2c093654aa8190725df.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6c9112e2f6295e85523a7493438ce7053ee208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
