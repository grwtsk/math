# MajorityCrossingBijectionCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d8bf7772195d6bb8185ac8a1c8eaea0b0c0f79e5e9cc8c443a41bc50da37439",
  "kind": "structure",
  "lexical_name": "MajorityCrossingBijectionCertificate",
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
  "slug": "majoritycrossingbijectioncertificate--81051a90b36ef459624c10b0",
  "source": {
    "blob": "73efe2675e3d4194e494af3cf7a463fb1ee0c9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81051a90b36ef459624c10b04fcf9f6730ccaee7198fa2cf8b48807716cdbec3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d8bf7772195d6bb8185ac8a1c8eaea0b0c0f79e5e9cc8c443a41bc50da37439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MajorityCrossingBijectionCertificate
    (magnitude : Nat) where
  magnitudePositive :
    0 < magnitude
  allCodes : Finset (List Bool)
  enumeratesExactly :
    ∀ word,
      word ∈ allCodes ↔
        IsFirstCrossingCode magnitude word
  toPrimitiveSubset :
    FirstCrossingCode magnitude →
      { selected : Finset (Fin magnitude) //
        IsPrimitiveCrossing magnitude selected }
  fromPrimitiveSubset :
    { selected : Finset (Fin magnitude) //
      IsPrimitiveCrossing magnitude selected } →
      FirstCrossingCode magnitude
  leftInverse :
    Function.LeftInverse
      fromPrimitiveSubset toPrimitiveSubset
  rightInverse :
    Function.RightInverse
      fromPrimitiveSubset toPrimitiveSubset
  endsAtGreatestSelectedPosition :
    Prop
  greatestPositionProof :
    endsAtGreatestSelectedPosition
  cardinality :
    allCodes.card =
      Nat.choose magnitude
        (majorityThreshold magnitude)

end Mathematics.StratifiedBoundary.Frontier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantb7b6eb6cc3e8215f4052a29f425b4d6bf29b5a76bd8193bb112969e7be7b17a0.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73efe2675e3d4194e494af3cf7a463fb1ee0c9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
