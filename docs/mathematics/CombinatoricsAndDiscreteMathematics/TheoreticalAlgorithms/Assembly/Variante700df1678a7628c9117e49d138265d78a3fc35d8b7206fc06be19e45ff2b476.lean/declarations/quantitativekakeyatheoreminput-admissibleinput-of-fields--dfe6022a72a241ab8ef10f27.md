# QuantitativeKakeyaTheoremInput.admissibleInput_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb324cb-e9b0-0ae3-f6e1-2770db0b0404",
  "kind": "theorem",
  "lexical_name": "QuantitativeKakeyaTheoremInput.admissibleInput_of_fields",
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
  "slug": "quantitativekakeyatheoreminput-admissibleinput-of-fields--dfe6022a72a241ab8ef10f27",
  "source": {
    "blob": "b741193798a24867f9e68e557e098560a05befa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe6022a72a241ab8ef10f27853bd3266dd66210ab02e06ff5d8874456314e40",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb324cb-e9b0-0ae3-f6e1-2770db0b0404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuantitativeKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (Q : QuantitativeKakeyaTheoremInput K) :
    Q.usableForMajorProof :=
  ⟨Q.wolffAxioms.usableForMajorProof_of_fields,
    Q.convexWolffFactorization.usableForMajorProof_of_fields,
    Q.stickyKakeya.admissibleInput_of_fields,
    Q.tubeVolumeLowerBound.usableForMajorProof_of_fields,
    Q.dimensionLowerBound.usableForMajorProof_of_fields,
    Q.noFiniteStructuralSurrogateCertified⟩

/--
Bridge from finite structural vocabulary to quantitative geometry.

The bridge is intentionally not usable for major proofs unless an actual
quantitative theorem input is present.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Assembly/Variante700df1678a7628c9117e49d138265d78a3fc35d8b7206fc06be19e45ff2b476.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b741193798a24867f9e68e557e098560a05befa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
