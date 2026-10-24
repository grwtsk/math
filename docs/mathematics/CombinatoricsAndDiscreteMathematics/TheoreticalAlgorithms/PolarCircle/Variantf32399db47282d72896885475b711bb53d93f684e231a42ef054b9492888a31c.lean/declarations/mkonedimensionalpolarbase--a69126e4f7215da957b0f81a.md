# mkOneDimensionalPolarBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c00db5fa548dd7d9812381b3aad32978211559452f79cb6aa8f059d23870ba49",
  "kind": "def",
  "lexical_name": "mkOneDimensionalPolarBase",
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
  "slug": "mkonedimensionalpolarbase--a69126e4f7215da957b0f81a",
  "source": {
    "blob": "70ed3be19de2018ea25a45ba2a4b9116d85e2b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a69126e4f7215da957b0f81ab9b3d125399f476185e53cc36fb0f3a225a968fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c00db5fa548dd7d9812381b3aad32978211559452f79cb6aa8f059d23870ba49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkOneDimensionalPolarBase
    (eps : FiniteEpsilon)
    (b : PolarBaseBit) :
    OneDimensionalPolarBase where
  baseBit := b
  epsilon := eps
  originalWord := word010
  splitWord := word0110
  inverseWord := word1001
  original_eq_010 := rfl
  split_eq_0110 := rfl
  inverse_eq_1001 := rfl
  splitSymmetric := by
    exact split0110_reverse_symmetric
  inverseIsComplement := by
    exact split0110_inverts_to_1001
  positiveHalf := word01
  negativeHalf := word10
  positiveHalf_eq_01 := rfl
  negativeHalf_eq_10 := rfl
  relaxedValue := relaxedValueOfBase eps b
  relaxedValueSound := rfl
  claimBoundary := [
    "Base case: 010 is singular under naive tail gluing.",
    "Repair: 010 to 0110 separates original orientation 01 from polar inversion 10.",
    "The base split is finite and symmetric.",
    "Invertibility is word-level complement/reversal only unless a BinaryLogicMatrixFlow certificate is supplied."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantf32399db47282d72896885475b711bb53d93f684e231a42ef054b9492888a31c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70ed3be19de2018ea25a45ba2a4b9116d85e2b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
