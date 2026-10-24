# opcyclesToCycles_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5615308-b483-7bbd-d69a-8188a96a5344",
  "kind": "lemma",
  "lexical_name": "opcyclesToCycles_naturality",
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
  "slug": "opcyclestocycles-naturality--82cdb0f05763c8ae4d400552",
  "source": {
    "blob": "52cd76236f12412437d134fe5b5ba1eec7145a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82cdb0f05763c8ae4d400552d1e5d7b9967327d48ee0480fb610b1f7d4e2c31a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5615308-b483-7bbd-d69a-8188a96a5344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesToCycles_naturality :
    opcyclesMap φ i ≫ opcyclesToCycles L i j = opcyclesToCycles K i j ≫ cyclesMap φ j := by
  simp only [← cancel_mono (L.iCycles j), ← cancel_epi (K.pOpcycles i),
    assoc, p_opcyclesMap_assoc, pOpcycles_opcyclesToCycles_iCycles, Hom.comm, cyclesMap_i,
    pOpcycles_opcyclesToCycles_iCycles_assoc]

variable (C c)

set_option backward.defeqAttrib.useBackward true in
/-- The natural transformation `K.opcyclesToCycles i j : K.opcycles i ⟶ K.cycles j` for all
`K : HomologicalComplex C c`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cd76236f12412437d134fe5b5ba1eec7145a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
