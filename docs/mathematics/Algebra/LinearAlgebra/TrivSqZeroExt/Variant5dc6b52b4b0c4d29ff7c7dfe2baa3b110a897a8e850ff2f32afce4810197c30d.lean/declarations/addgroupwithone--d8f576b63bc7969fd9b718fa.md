# addGroupWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3aad839abc13564e7c3e152f592454ee7464c8fd4ed2561b8315f8b46a48a3c0",
  "kind": "instance",
  "lexical_name": "addGroupWithOne",
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
  "slug": "addgroupwithone--d8f576b63bc7969fd9b718fa",
  "source": {
    "blob": "5312a3843b058f246d7bded10f6a2aa1f41a956a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 541,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8f576b63bc7969fd9b718fa966445d3b7c2a37586cec5a9140eef1f88a57566",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3aad839abc13564e7c3e152f592454ee7464c8fd4ed2561b8315f8b46a48a3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addGroupWithOne [AddGroupWithOne R] [AddGroup M] : AddGroupWithOne (tsze R M) :=
  { TrivSqZeroExt.addGroup, TrivSqZeroExt.addMonoidWithOne with
    intCast := fun z => inl z
    intCast_ofNat := fun _n => ext (Int.cast_ofNat _) rfl
    intCast_negSucc := fun _n => ext (Int.cast_negSucc _) neg_zero.symm }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant5dc6b52b4b0c4d29ff7c7dfe2baa3b110a897a8e850ff2f32afce4810197c30d.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5312a3843b058f246d7bded10f6a2aa1f41a956a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
