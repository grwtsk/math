# ι_comp_sigmaObjIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b21f86509e1a5d0c1cba789237dc3c07ed622432",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4226e962-8e79-080a-d858-3600c29d09c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30d181af-aa9c-43cb-3107-7ec0cd2249da",
  "kind": "theorem",
  "lexical_name": "ι_comp_sigmaObjIso_inv",
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
  "slug": "comp-sigmaobjiso-inv--aa3d46d2e42e0a8ed8749389",
  "source": {
    "blob": "b21f86509e1a5d0c1cba789237dc3c07ed622432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa3d46d2e42e0a8ed8749389295f307f30bbb620cfc0e784540211aa9180ce43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30d181af-aa9c-43cb-3107-7ec0cd2249da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_comp_sigmaObjIso_inv (f : α → D ⥤ C) (d : D) (s : α) :
    Sigma.ι (fun s => (f s).obj d) s ≫ (sigmaObjIso f d).inv = (Sigma.ι f s).app d := by
  simp [sigmaObjIso]

end Coproduct

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant7bd6b239469dffde5863cd911318d0ea017c861e689b7a257415e9cecc69b304.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21f86509e1a5d0c1cba789237dc3c07ed622432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
