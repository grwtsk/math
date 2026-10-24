# ι_normalizedChainComplexMap_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bd65e8f38ee55a378e6bed5fb86b816971c82c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0f22370-024e-8b33-0d44-7789ea216289",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6651bf77-ac46-bdf6-5155-be5b4a18625a",
  "kind": "lemma",
  "lexical_name": "ι_normalizedChainComplexMap_f",
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
  "slug": "normalizedchaincomplexmap-f--86bb18804e1aab0e48c20866",
  "source": {
    "blob": "2bd65e8f38ee55a378e6bed5fb86b816971c82c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86bb18804e1aab0e48c208667297c3568c09a48f22af81e133b9db030a56f7ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6651bf77-ac46-bdf6-5155-be5b4a18625a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_normalizedChainComplexMap_f {n : ℕ} (x : X _⦋n⦌) :
    X.ιNormalizedChainComplex x ≫ (normalizedChainComplexMap f R).f n =
      Y.ιNormalizedChainComplex (f.app _ x) := by
  simpa only [comp_f, eval_map, ιNormalizedChainComplex,
    ιChainComplex_toNormalizedChainComplex_f_assoc, ι_chainComplexMap_f_assoc] using
    X.ιChainComplex x ≫=
      (eval _ _ n).congr_map (toNormalizedChainComplex_normalizedChainComplexMap f R)

/-- Given `R : C`, this is the functor `SSet.{w} ⥤ ChainComplex C ℕ` which sends
a simplicial set `X` to `X.normalizedChainComplex R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Nondegenerate/Variantbb5688ad500eac15fe3f045991378cee1cb9828e31a109145d8a58c2235f494a.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd65e8f38ee55a378e6bed5fb86b816971c82c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
