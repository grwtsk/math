# tensorProduct_isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a2a9c006aac41f315b9ddc28e10556193837a64558ff149c27934567eac464",
  "kind": "instance",
  "lexical_name": "tensorProduct_isLocalizedModule",
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
  "slug": "tensorproduct-islocalizedmodule--eb53be8af36a2b92271ac3d6",
  "source": {
    "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb53be8af36a2b92271ac3d6dde156c1a5e058fcf6cc6248bfa97b0bed348059",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a2a9c006aac41f315b9ddc28e10556193837a64558ff149c27934567eac464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tensorProduct_isLocalizedModule : IsLocalizedModule S (TensorProduct.mk R A M 1) :=
  (isLocalizedModule_iff_isBaseChange _ A _).mpr (TensorProduct.isBaseChange _ _ _)

variable (M₁ M₂ B C) [AddCommMonoid M₁] [AddCommMonoid M₂] [Module R M₁] [Module R M₂]
  [Module A M₁] [Module A M₂] [IsScalarTower R A M₁] [IsScalarTower R A M₂]
  [Semiring B] [Algebra R B] [Algebra A B] [IsScalarTower R A B]
  [Semiring C] [Algebra R C] [Algebra A C] [IsScalarTower R A C]
include S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c16c386e50b0680d9532b9006d119c6c60c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
