# LinearEquiv.extendScalarsOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:759e9df1ca6625ce270800483615405a072b75b03aed0ba8a0e51dfaccdadc30",
  "kind": "def",
  "lexical_name": "LinearEquiv.extendScalarsOfIsLocalization",
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
  "slug": "linearequiv-extendscalarsofislocalization--45148d5de6046f891d13aeff",
  "source": {
    "blob": "1a0cd504be2562185a9c53ee95916fc308be9926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 238,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45148d5de6046f891d13aeff14743402c40bf08eb8cd4944e7cc3d4d515dae29",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:759e9df1ca6625ce270800483615405a072b75b03aed0ba8a0e51dfaccdadc30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearEquiv.extendScalarsOfIsLocalization (f : M ≃ₗ[R] N) : M ≃ₗ[A] N :=
  .ofLinear (LinearMap.extendScalarsOfIsLocalization S A f)
    (LinearMap.extendScalarsOfIsLocalization S A f.symm)
    (by ext; simp) (by ext; simp)

/-- The `S⁻¹R`-linear isomorphisms between two `S⁻¹R`-modules are exactly the `R`-linear
isomorphisms. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a0cd504be2562185a9c53ee95916fc308be9926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
