# QuantitativeKakeyaTheoremInput.usableForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fb8e9bf227a054c2e2cdf2edf6db48d3778672ec505288ca9917b7244cb699d",
  "kind": "def",
  "lexical_name": "QuantitativeKakeyaTheoremInput.usableForMajorProof",
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
  "slug": "quantitativekakeyatheoreminput-usableformajorproof--a6ad25299781ec9be20a6460",
  "source": {
    "blob": "b741193798a24867f9e68e557e098560a05befa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6ad25299781ec9be20a64608d3338fcd59d12b6c8761c3d0a1ed3c484e6fd70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fb8e9bf227a054c2e2cdf2edf6db48d3778672ec505288ca9917b7244cb699d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def QuantitativeKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (Q : QuantitativeKakeyaTheoremInput K) :
    Prop :=
  Q.wolffAxioms.usableForMajorProof ∧
  Q.convexWolffFactorization.usableForMajorProof ∧
  Q.stickyKakeya.usableForMajorProof ∧
  Q.tubeVolumeLowerBound.usableForMajorProof ∧
  Q.dimensionLowerBound.usableForMajorProof ∧
  Q.noFiniteStructuralSurrogate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b741193798a24867f9e68e557e098560a05befa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
