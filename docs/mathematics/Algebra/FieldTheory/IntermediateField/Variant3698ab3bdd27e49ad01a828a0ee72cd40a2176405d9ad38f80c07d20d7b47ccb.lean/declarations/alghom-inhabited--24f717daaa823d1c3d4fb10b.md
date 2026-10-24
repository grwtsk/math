# AlgHom.inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba6ca35620262a2fdb57794f025a8a61c19b958e7ec7eda4ebbb4130b2d4858a",
  "kind": "instance",
  "lexical_name": "AlgHom.inhabited",
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
  "slug": "alghom-inhabited--24f717daaa823d1c3d4fb10b",
  "source": {
    "blob": "2d114a2896036b3fee44994b9915a53c68228ae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 504,
    "path": "GRWTSK/Algebra/FieldTheory/IntermediateField/Variant3698ab3bdd27e49ad01a828a0ee72cd40a2176405d9ad38f80c07d20d7b47ccb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24f717daaa823d1c3d4fb10b562839f21a1eb7bf215f8df1d406250c2b7f7af3",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/IntermediateField/Variant3698ab3bdd27e49ad01a828a0ee72cd40a2176405d9ad38f80c07d20d7b47ccb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba6ca35620262a2fdb57794f025a8a61c19b958e7ec7eda4ebbb4130b2d4858a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AlgHom.inhabited : Inhabited (S →ₐ[K] L) :=
  ⟨S.val⟩
#align intermediate_field.alg_hom.inhabited IntermediateField.AlgHom.inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/IntermediateField/Variant3698ab3bdd27e49ad01a828a0ee72cd40a2176405d9ad38f80c07d20d7b47ccb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/IntermediateField/Variant3698ab3bdd27e49ad01a828a0ee72cd40a2176405d9ad38f80c07d20d7b47ccb.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d114a2896036b3fee44994b9915a53c68228ae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
