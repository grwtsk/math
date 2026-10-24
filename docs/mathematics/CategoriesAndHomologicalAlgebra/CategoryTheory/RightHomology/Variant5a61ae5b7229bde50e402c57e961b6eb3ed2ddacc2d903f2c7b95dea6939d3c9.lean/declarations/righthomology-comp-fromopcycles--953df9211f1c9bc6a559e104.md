# rightHomologyι_comp_fromOpcycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "858ffdc8be975b60766d728ba97444fe77ed9244",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8aa7a902-3ade-e3b1-012a-120327bf646b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03f2cd8a-c917-cae1-a8ff-93613dbcfad8",
  "kind": "lemma",
  "lexical_name": "rightHomologyι_comp_fromOpcycles",
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
  "slug": "righthomology-comp-fromopcycles--953df9211f1c9bc6a559e104",
  "source": {
    "blob": "858ffdc8be975b60766d728ba97444fe77ed9244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1191,
    "line": 1186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953df9211f1c9bc6a559e104e177191d775ab055db0b97ade56473220e212322",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03f2cd8a-c917-cae1-a8ff-93613dbcfad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1186–1191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightHomologyι_comp_fromOpcycles :
    S.rightHomologyι ≫ S.fromOpcycles = 0 :=
  S.rightHomologyι_descOpcycles_π_eq_zero_of_boundary S.g (𝟙 _) (by rw [comp_id])

/-- Via `S.rightHomologyι : S.rightHomology ⟶ S.opcycles`, the object `S.rightHomology` identifies
to the kernel of `S.fromOpcycles : S.opcycles ⟶ S.X₃`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant5a61ae5b7229bde50e402c57e961b6eb3ed2ddacc2d903f2c7b95dea6939d3c9.lean#L1186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858ffdc8be975b60766d728ba97444fe77ed9244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
