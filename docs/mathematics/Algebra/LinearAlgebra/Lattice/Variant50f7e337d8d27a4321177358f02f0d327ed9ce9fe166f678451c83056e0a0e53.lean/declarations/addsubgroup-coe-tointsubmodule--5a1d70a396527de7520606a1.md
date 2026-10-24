# AddSubgroup.coe_toIntSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a1d738-e7e1-0dbb-e2e6-be3a42747fbf",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.coe_toIntSubmodule",
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
  "slug": "addsubgroup-coe-tointsubmodule--5a1d70a396527de7520606a1",
  "source": {
    "blob": "59f21b8297b98558b4442f28eb107a1e90b12c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 411,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1d70a396527de7520606a1ae84e5e73239ce9d09ae0649260d99ca28eeaa9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a1d738-e7e1-0dbb-e2e6-be3a42747fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.coe_toIntSubmodule (S : AddSubgroup M) :
    (AddSubgroup.toIntSubmodule S : Set M) = S :=
  rfl
#align add_subgroup.coe_to_int_submodule AddSubgroup.coe_toIntSubmodule

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f21b8297b98558b4442f28eb107a1e90b12c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
