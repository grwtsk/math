# PositiveCommutingInvolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f7ae012b57e07b601ed8be8e6737cbbbdd734acabd1300cacd63678037f48bc",
  "kind": "structure",
  "lexical_name": "PositiveCommutingInvolutions",
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
  "slug": "positivecommutinginvolutions--21bc8f891df34f4f1a1621dc",
  "source": {
    "blob": "01bdb0c4eaef2e8d1081cfabce7214c470ffa18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21bc8f891df34f4f1a1621dcd97becc22af0bff00b9552d73c03ff1301711fea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f7ae012b57e07b601ed8be8e6737cbbbdd734acabd1300cacd63678037f48bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveCommutingInvolutions (G : PositiveForm V) where
  involutions : CommutingInvolutions V
  first_selfAdjoint : G.SelfAdjointFor involutions.first
  second_selfAdjoint : G.SelfAdjointFor involutions.second

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- The ++ sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantabc5937c50fc7f7c49c725d4015e413df561607b91a4a47683752afcf5b71894.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01bdb0c4eaef2e8d1081cfabce7214c470ffa18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
