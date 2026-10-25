# CentralBinomialThetaDifferenceTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1614631872a2c29cc451aa3c168158c6314a1d39467e1c3c1452211c2bdfe38",
  "kind": "def",
  "lexical_name": "CentralBinomialThetaDifferenceTarget",
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
  "slug": "centralbinomialthetadifferencetarget--8e69896d91cddff03fd2f070",
  "source": {
    "blob": "533cbf45713f409b40133f5b92029b92719b37a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e69896d91cddff03fd2f070084be48f144c1ca7645bc6805e917e739cf5a5ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1614631872a2c29cc451aa3c168158c6314a1d39467e1c3c1452211c2bdfe38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CentralBinomialThetaDifferenceTarget : Prop :=
  ∀ n : Nat,
    chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/BinomialChebyshevBounds/Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533cbf45713f409b40133f5b92029b92719b37a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
