# AddHomPlus2.Simps.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de3ec92a27924543d1187b0f9d15c7d5bfbcf0b7265b0a03086affe8091a487",
  "kind": "def",
  "lexical_name": "AddHomPlus2.Simps.mul",
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
  "slug": "addhomplus2-simps-mul--7db1056e0554a3b83d4b06d0",
  "source": {
    "blob": "ae17e6f543e058826a9ff96cb59485f5686c996c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1133,
    "line": 1125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant4562bd3d8d2c0f5ccc25f7b787dab3ddb7e00f8cee4f05e35ae223849b7c35fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7db1056e0554a3b83d4b06d0361d162f7f92a67daf2200308374be6b99c2ca02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant4562bd3d8d2c0f5ccc25f7b787dab3ddb7e00f8cee4f05e35ae223849b7c35fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de3ec92a27924543d1187b0f9d15c7d5bfbcf0b7265b0a03086affe8091a487`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1125–1133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddHomPlus2.Simps.mul [Add ι] [AddHomPlus2 A] {i j : ι}
  (x : A i) (y : A j) : A (i + j) :=
AddHomPlus2.myMul x y

initialize_simps_projections AddHomPlus2 (-myMul, myMul_toFun_toFun → mul)

attribute [ext] Equiv'

@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant4562bd3d8d2c0f5ccc25f7b787dab3ddb7e00f8cee4f05e35ae223849b7c35fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Simps/Variant4562bd3d8d2c0f5ccc25f7b787dab3ddb7e00f8cee4f05e35ae223849b7c35fa.lean#L1125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae17e6f543e058826a9ff96cb59485f5686c996c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
