# InfiniteEulerProductAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74b6cf15e42146f5fcc2ecc1c1fa2f50c2e96d8d2ed0ea033e88648ad7f3ea3d",
  "kind": "structure",
  "lexical_name": "InfiniteEulerProductAuthority",
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
  "slug": "infiniteeulerproductauthority--39bd579395fef6840bbad7d0",
  "source": {
    "blob": "3f7d50d6434c8e499ce1fee5d1a05454d44e62ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39bd579395fef6840bbad7d07122d942e5ae5ff45f5fc16652cd14ffefcda405",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74b6cf15e42146f5fcc2ecc1c1fa2f50c2e96d8d2ed0ea033e88648ad7f3ea3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InfiniteEulerProductAuthority
    (_finiteSystemLabel : String) where
  absoluteConvergenceSound : Prop
  absoluteConvergenceProof : absoluteConvergenceSound
  finiteProductsConverge : Prop
  finiteProductsConvergeProof : finiteProductsConverge
  productIdentitySound : Prop
  productIdentityProof : productIdentitySound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f7d50d6434c8e499ce1fee5d1a05454d44e62ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
