# BinaryCubeLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a139f23b662fe67f18f8f04fb46a1b143c9fe353a8a3f9d61e4f3850681ad0e",
  "kind": "structure",
  "lexical_name": "BinaryCubeLevel",
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
  "slug": "binarycubelevel--bbca73aa9a4e0028bae334c7",
  "source": {
    "blob": "830fc722493c696b0ae47289eb3716997c9f68cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbca73aa9a4e0028bae334c7029053163898c2a683e9c1fcb6a8d47fef5fa99f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a139f23b662fe67f18f8f04fb46a1b143c9fe353a8a3f9d61e4f3850681ad0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryCubeLevel (M : Carrier.BinaryMatrix) where
  level : Nat
  rows_eq : M.m = 2 ^ level
  cols_eq : M.n = 2 ^ level

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830fc722493c696b0ae47289eb3716997c9f68cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
