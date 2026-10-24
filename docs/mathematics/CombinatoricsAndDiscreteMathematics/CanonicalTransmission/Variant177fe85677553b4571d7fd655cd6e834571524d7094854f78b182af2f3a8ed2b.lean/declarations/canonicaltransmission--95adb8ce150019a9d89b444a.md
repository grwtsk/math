# CanonicalTransmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c73a82ec41fea739ba3e6c356bfc67db607370dad2b2a1cafb7b318c65537f7",
  "kind": "structure",
  "lexical_name": "CanonicalTransmission",
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
  "slug": "canonicaltransmission--95adb8ce150019a9d89b444a",
  "source": {
    "blob": "c3c59df2269414d7e37de64ddc2840876af9ecd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 14,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalTransmission/Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95adb8ce150019a9d89b444ad1ec89c7152c9983c5cda9b8000404d6f3d3acde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalTransmission/Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c73a82ec41fea739ba3e6c356bfc67db607370dad2b2a1cafb7b318c65537f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalTransmission
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  transmission :
    Finset Prime → model.Operator
  gram :
    Finset Prime → model.Operator
  gram_eq_complement :
    ∀ cut,
      gram cut =
        model.identity - capacity.defect cut
  squareRootFunctionalCalculus : Prop
  squareRootFunctionalCalculusProof :
    squareRootFunctionalCalculus
  gram_monotone_reverse :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (gram target) (gram source)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalTransmission/Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalTransmission/Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c59df2269414d7e37de64ddc2840876af9ecd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
