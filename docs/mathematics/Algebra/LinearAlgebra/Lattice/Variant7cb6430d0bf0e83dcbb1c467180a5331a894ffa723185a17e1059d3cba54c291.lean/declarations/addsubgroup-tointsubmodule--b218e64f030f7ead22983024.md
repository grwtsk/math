# AddSubgroup.toIntSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32bc680dba2938faa5375ea20cc985885fb6c357f3e9b7f7da18abdaa1db45e3",
  "kind": "def",
  "lexical_name": "AddSubgroup.toIntSubmodule",
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
  "slug": "addsubgroup-tointsubmodule--b218e64f030f7ead22983024",
  "source": {
    "blob": "f0f55f21c454bad66bfd0e7f7312b6d29219d096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 419,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b218e64f030f7ead2298302449789796b498d1580e84a49db8a3e92e0f91508c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32bc680dba2938faa5375ea20cc985885fb6c357f3e9b7f7da18abdaa1db45e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddSubgroup.toIntSubmodule : AddSubgroup M ≃o Submodule ℤ M where
  toFun S := { S with smul_mem' := fun _ _ hs ↦ S.zsmul_mem hs _ }
  invFun := Submodule.toAddSubgroup
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' := Iff.rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f55f21c454bad66bfd0e7f7312b6d29219d096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
