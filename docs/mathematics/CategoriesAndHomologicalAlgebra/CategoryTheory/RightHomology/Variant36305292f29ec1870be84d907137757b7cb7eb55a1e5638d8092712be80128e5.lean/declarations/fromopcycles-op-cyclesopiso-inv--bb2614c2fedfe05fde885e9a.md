# fromOpcycles_op_cyclesOpIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db7db3eb3f9bc867e623dbeaff836577df828c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1036,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b825bd11-9cbf-e1b9-d49e-e1ee1528b688",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:615fb7cc-1057-0962-2d7a-591a8594cfb8",
  "kind": "lemma",
  "lexical_name": "fromOpcycles_op_cyclesOpIso_inv",
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
  "slug": "fromopcycles-op-cyclesopiso-inv--bb2614c2fedfe05fde885e9a",
  "source": {
    "blob": "db7db3eb3f9bc867e623dbeaff836577df828c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1044,
    "line": 1036,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2614c2fedfe05fde885e9ac731ede86b6a78a97200a8e6fc5910409d9cfafa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615fb7cc-1057-0962-2d7a-591a8594cfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1044.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fromOpcycles_op_cyclesOpIso_inv [S.HasRightHomology] :
    S.fromOpcycles.op ≫ S.cyclesOpIso.inv = S.op.toCycles := by
  dsimp [cyclesOpIso, fromOpcycles]
  rw [← cancel_mono S.op.iCycles, assoc, toCycles_i,
    LeftHomologyData.cyclesIso_inv_comp_iCycles, RightHomologyData.op_i,
    ← op_comp, RightHomologyData.p_g', op_f]

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant36305292f29ec1870be84d907137757b7cb7eb55a1e5638d8092712be80128e5.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7db3eb3f9bc867e623dbeaff836577df828c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
