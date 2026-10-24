# functorOp_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6f252d0-936a-a1db-cb9b-4781035096a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be7df930-ce7f-6adc-16a3-c0180191504a",
  "kind": "theorem",
  "lexical_name": "functorOp_final",
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
  "slug": "functorop-final--94ebc1b93e193a32b23a3594",
  "source": {
    "blob": "5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94ebc1b93e193a32b23a3594e88195c680e623e2c6372c531ea74b10f730dac9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be7df930-ce7f-6adc-16a3-c0180191504a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functorOp_final (hc : IsLimit c) [∀ i, Epi (c.π.app i)] : Final (functorOp c) := by
  have := functor_initial c hc
  have : ((StructuredArrow.toCostructuredArrow toLightProfinite c.pt)).IsEquivalence  :=
    (inferInstance : (structuredArrowOpEquivalence _ _).functor.IsEquivalence )
  have : (functor c).rightOp.Final :=
    inferInstanceAs ((opOpEquivalence ℕ).inverse ⋙ (functor c).op).Final
  exact Functor.final_comp (functor c).rightOp _

section Limit

variable {C : Type*} [Category C] (G : LightProfinite ⥤ C)

/--
Given a functor `G` from `LightProfinite` and `S : LightProfinite`, we obtain a cone on
`(StructuredArrow.proj S toLightProfinite ⋙ toLightProfinite ⋙ G)` with cone point `G.obj S`.

Whiskering this cone with `LightProfinite.Extend.functor c` gives `G.mapCone c` as we check in the
example below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
