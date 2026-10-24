# cocycleOfDegreewiseSplit_triangleRotateShortComplexSplitting_v

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1361868167b67d1949dd06f124f564538d83cde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12efed35a633c5351cbbbd584ecd28eca225ddbb4211bd016ab6328f3960e22c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2ca6edb-85de-4ce4-5087-948fc54f0193",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8ad9bc3-de9f-86ba-3e17-97e77f30a4bb",
  "kind": "lemma",
  "lexical_name": "cocycleOfDegreewiseSplit_triangleRotateShortComplexSplitting_v",
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
  "slug": "cocycleofdegreewisesplit-trianglerotateshortcomplexsplitting-v--075e5fd98fbf51e8c6e3db5d",
  "source": {
    "blob": "e1361868167b67d1949dd06f124f564538d83cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant12efed35a633c5351cbbbd584ecd28eca225ddbb4211bd016ab6328f3960e22c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:075e5fd98fbf51e8c6e3db5d48c628b141a6e2893bc016719a5ad9fbd384b107",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant12efed35a633c5351cbbbd584ecd28eca225ddbb4211bd016ab6328f3960e22c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ad9bc3-de9f-86ba-3e17-97e77f30a4bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cocycleOfDegreewiseSplit_triangleRotateShortComplexSplitting_v (p : ℤ) :
    (cocycleOfDegreewiseSplit _ (triangleRotateShortComplexSplitting φ)).1.v p _ rfl =
      -φ.f _ := by
  simp [cocycleOfDegreewiseSplit, d_snd_v φ p (p + 1) rfl]

/-- The triangle `(triangle φ).rotate` is isomorphic to a triangle attached to a
degreewise split short exact sequence of cochain complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant12efed35a633c5351cbbbd584ecd28eca225ddbb4211bd016ab6328f3960e22c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant12efed35a633c5351cbbbd584ecd28eca225ddbb4211bd016ab6328f3960e22c.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1361868167b67d1949dd06f124f564538d83cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
