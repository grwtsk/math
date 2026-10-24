# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ae73bd90446dd71d56f6aa7ae0f05a35cb4bc7e6d052f4f29de64d5632ffcdf",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--cc47bd7d56c632ab080554b3",
  "source": {
    "blob": "732fd3afe4d63c062bd41f2cd6f708beebc41798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8,
    "line": 7,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MonCat/Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc47bd7d56c632ab080554b3b9fb89514ac7d7e92ab2b1e75bf86ba5444756b8",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MonCat/Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ae73bd90446dd71d56f6aa7ae0f05a35cb4bc7e6d052f4f29de64d5632ffcdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–8.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R S : MonCat} (i : R ⟶ S) (r : R) (h : r = 1) : i r = 1 := by simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MonCat/Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MonCat/Variantdcb5e16d256a8af2de338cbc675f258767be1739776808310fccb94587ed656f.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `732fd3afe4d63c062bd41f2cd6f708beebc41798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
