# fundamentalGroupMulEquivOfPathConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:813464d2a91b65301235838b4b2cab15b6551696858b2d641545548afbb7b414",
  "kind": "def",
  "lexical_name": "fundamentalGroupMulEquivOfPathConnected",
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
  "slug": "fundamentalgroupmulequivofpathconnected--bd88ab96d41525f47c60617e",
  "source": {
    "blob": "89a796c9c183c5ffc8200822bca3218fac4aa92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd88ab96d41525f47c60617ee4908607260e8915452373968549d0cdce93ee3d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:813464d2a91b65301235838b4b2cab15b6551696858b2d641545548afbb7b414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fundamentalGroupMulEquivOfPathConnected [PathConnectedSpace X] :
    FundamentalGroup X x₀ ≃* FundamentalGroup X x₁ :=
  fundamentalGroupMulEquivOfPath (PathConnectedSpace.somePath x₀ x₁)
#align fundamental_group.fundamental_group_mul_equiv_of_path_connected FundamentalGroup.fundamentalGroupMulEquivOfPathConnected

/-- An element of the fundamental group as an arrow in the fundamental groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant1494094cea7d2ef799d7139168294947b50b66ac710f59af8c65205d0b47be85.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a796c9c183c5ffc8200822bca3218fac4aa92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
