# toDual_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02dac3fc-4a90-d031-bc5a-bb1505a9048e",
  "kind": "theorem",
  "lexical_name": "toDual_injective",
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
  "slug": "todual-injective--11cded5475e49aac69b4fcca",
  "source": {
    "blob": "9d7c1a821892237d0fe9262da98a64bf8da116a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11cded5475e49aac69b4fcca4d354cc0bd3cd2f4339bde40e0fdf8ad49202903",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02dac3fc-4a90-d031-bc5a-bb1505a9048e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDual_injective : Injective b.toDual := fun x y h ↦ b.ext_elem_iff.mpr fun i ↦ by
  simp_rw [← toDual_eq_repr]; exact DFunLike.congr_fun h _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant784a16dc2d10e52be8695f72ce4b601964422b68288164af5dc317996e400a15.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d7c1a821892237d0fe9262da98a64bf8da116a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
