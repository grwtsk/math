# lTensorOne'_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8816236e-395f-f4d2-0ccc-a137ca723bc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:208c7cd0-7162-f72c-f02f-501196791395",
  "kind": "theorem",
  "lexical_name": "lTensorOne'_tmul",
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
  "slug": "ltensorone-tmul--f9b4c94dc155faa6013283d7",
  "source": {
    "blob": "29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 149,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9b4c94dc155faa6013283d7b02292640ae0587161c4b1e40f4543dfff139fc7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208c7cd0-7162-f72c-f02f-501196791395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lTensorOne'_tmul (y : R) (n : N) :
    N.lTensorOne' (algebraMap R _ y ⊗ₜ[R] n) = y • n := Subtype.val_injective <| by
  simp_rw [lTensorOne', LinearMap.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    LinearEquiv.coe_ofEq_apply, LinearMap.codRestrict_apply, SetLike.val_smul, Algebra.smul_def]
  exact mulMap_tmul _ N _ _

variable {N} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd88ca0d659fb9e1c4eac5723fa214e47970e2030dc17c9f540213cf77987d2ef.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29800b1d83dccae7dbe5927eb9f80de1c0b1ab0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
