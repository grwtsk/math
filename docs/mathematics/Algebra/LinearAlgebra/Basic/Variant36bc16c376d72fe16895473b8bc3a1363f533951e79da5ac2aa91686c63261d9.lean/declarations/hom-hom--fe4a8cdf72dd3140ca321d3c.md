# Hom.hom₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2e959114c2c2628d0abd2baf95dc67cba0ea87ce65ffd51283b2180d96dcbca",
  "kind": "def",
  "lexical_name": "Hom.hom₂",
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
  "slug": "hom-hom--fe4a8cdf72dd3140ca321d3c",
  "source": {
    "blob": "545624a94234a1689ea69acb23ffcc58aa6bbbbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 601,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant36bc16c376d72fe16895473b8bc3a1363f533951e79da5ac2aa91686c63261d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe4a8cdf72dd3140ca321d3c604e526f865a0af28132268fa122ba10d6afb575",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant36bc16c376d72fe16895473b8bc3a1363f533951e79da5ac2aa91686c63261d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2e959114c2c2628d0abd2baf95dc67cba0ea87ce65ffd51283b2180d96dcbca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.hom₂ {M N P : ModuleCat.{u} R}
    -- We write `Hom` instead of `M ⟶ (of R (N ⟶ P))`, otherwise dot notation breaks
    -- since it is expecting the type of `f` to be `ModuleCat.Hom`, not `Quiver.Hom`.
    (f : Hom M (of R (N ⟶ P))) :
    M →ₗ[R] N →ₗ[R] P :=
  Hom.hom (by convert (f ≫ ofHom homLinearEquiv.toLinearMap))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant36bc16c376d72fe16895473b8bc3a1363f533951e79da5ac2aa91686c63261d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant36bc16c376d72fe16895473b8bc3a1363f533951e79da5ac2aa91686c63261d9.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `545624a94234a1689ea69acb23ffcc58aa6bbbbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
