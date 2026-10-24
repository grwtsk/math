# final_fst_of_isConnected_structuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b37a77f-00f6-b330-b0e5-e2f8abe4a9d6",
  "kind": "lemma",
  "lexical_name": "final_fst_of_isConnected_structuredArrow",
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
  "slug": "final-fst-of-isconnected-structuredarrow--3318269dabc374eb37e442ba",
  "source": {
    "blob": "5629f5ad793367400acd445dc64b8cbcf53b25e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3318269dabc374eb37e442ba8f49c8036f85340bab6250f6afff97ade6a2a3df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b37a77f-00f6-b330-b0e5-e2f8abe4a9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma final_fst_of_isConnected_structuredArrow
    [∀ a, IsConnected (StructuredArrow (L.obj a) R)] : (fst L R).Final := by
  have (a : Aᵒᵖ) : IsConnected (CostructuredArrow R.op (L.op.obj a)) :=
    (isConnected_iff_of_equivalence (structuredArrowOpEquivalence R (L.obj a.unop))).mp
      inferInstance
  have : (snd R.op L.op).Initial := initial_snd_of_isConnected_costructuredArrow _ _
  have : ((opFunctor L R).leftOp ⋙ snd R.op L.op).Initial :=
    initial_equivalence_comp (opEquiv L R).functor.leftOp _
  have : (fst L R).op.Initial := initial_of_natIso <| opFunctorCompSnd _ _
  apply final_of_initial_op

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9b45aa5f2eed7c72798fc5f15b26a89bb452cffb661f861dca90e14f39c7e405.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5629f5ad793367400acd445dc64b8cbcf53b25e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
