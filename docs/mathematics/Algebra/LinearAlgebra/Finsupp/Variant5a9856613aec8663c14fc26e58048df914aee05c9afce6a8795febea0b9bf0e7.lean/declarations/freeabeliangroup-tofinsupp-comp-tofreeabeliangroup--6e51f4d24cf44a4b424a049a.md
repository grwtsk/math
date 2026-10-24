# FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1d29e7deae6d1b259a9749dd0bb9291a0da79b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:565009db-6af8-2b14-c4c8-8648413f146c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b5f893d-4ab7-6fc8-edee-b43194bc43d9",
  "kind": "theorem",
  "lexical_name": "FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup",
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
  "slug": "freeabeliangroup-tofinsupp-comp-tofreeabeliangroup--6e51f4d24cf44a4b424a049a",
  "source": {
    "blob": "d1d29e7deae6d1b259a9749dd0bb9291a0da79b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e51f4d24cf44a4b424a049ac1eb4c8043ebeff33323973926b0c52a70224363",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b5f893d-4ab7-6fc8-edee-b43194bc43d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FreeAbelianGroup.toFinsupp_comp_toFreeAbelianGroup :
    toFinsupp.comp toFreeAbelianGroup = AddMonoidHom.id (X →₀ ℤ) := by
  ext x y; simp only [AddMonoidHom.id_comp]
  rw [AddMonoidHom.comp_assoc, Finsupp.toFreeAbelianGroup_comp_singleAddHom]
  simp only [toFinsupp, AddMonoidHom.coe_comp, Finsupp.singleAddHom_apply, Function.comp_apply,
    one_smul, lift.of, AddMonoidHom.flip_apply, smulAddHom_apply, AddMonoidHom.id_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant5a9856613aec8663c14fc26e58048df914aee05c9afce6a8795febea0b9bf0e7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1d29e7deae6d1b259a9749dd0bb9291a0da79b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
