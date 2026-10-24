# spine_δ_arrow_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3940196-c7fc-8f30-d99f-6a9ed7f9637a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:723ee437-bc71-6115-56c9-b982f80194ca",
  "kind": "lemma",
  "lexical_name": "spine_δ_arrow_gt",
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
  "slug": "spine-arrow-gt--5cf803a85e35ba83b090a462",
  "source": {
    "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 194,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf803a85e35ba83b090a4628d31c044e2451d9ee537fa5be5d82ba19737d166",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:723ee437-bc71-6115-56c9-b982f80194ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_arrow_gt (hij : j < i.succ.castSucc) :
    (X.spine m _ (X.map (tr (δ j)).op
      (sx.spineToSimplex (m + 1) _ f))).arrow i = f.arrow i.succ := by
  rw [spine_arrow, ← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
    mkOfSucc_δ_gt hij, spineToSimplex_arrow]

end spine_δ

variable {X : SSet.Truncated.{u} (n + 2)} (sx : StrictSegal X) (m : ℕ)
  (h : m ≤ n + 1) (f : Path X (m + 1)) {i : Fin m} {j : Fin (m + 2)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
