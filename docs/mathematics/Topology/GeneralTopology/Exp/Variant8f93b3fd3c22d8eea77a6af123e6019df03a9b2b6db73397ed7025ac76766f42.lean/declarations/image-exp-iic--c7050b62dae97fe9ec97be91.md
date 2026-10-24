# image_exp_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be04c26a-77f4-5780-f73d-a52a1fd6d5d0",
  "kind": "theorem",
  "lexical_name": "image_exp_Iic",
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
  "slug": "image-exp-iic--c7050b62dae97fe9ec97be91",
  "source": {
    "blob": "fcf5045518281c2442878536854649c2c9065275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7050b62dae97fe9ec97be913dd244a1237d9441bcecd9d1eb1d0c885f025558",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be04c26a-77f4-5780-f73d-a52a1fd6d5d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_exp_Iic (a : ℝ) : exp '' Iic a = Ioc 0 (exp a) := by
  rw [← coe_comp_expOrderIso, image_comp, expOrderIso.image_Iic, image_subtype_val_Ioi_Iic,
    Function.comp_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5045518281c2442878536854649c2c9065275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
