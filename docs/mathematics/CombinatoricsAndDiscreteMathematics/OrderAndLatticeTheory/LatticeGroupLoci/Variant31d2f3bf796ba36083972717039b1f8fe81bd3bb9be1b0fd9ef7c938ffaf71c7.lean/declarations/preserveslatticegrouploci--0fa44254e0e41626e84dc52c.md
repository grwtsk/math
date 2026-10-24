# PreservesLatticeGroupLoci

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82932aafa85e1b7ca953c243a298403bbc122543ee801a665e7fc27d369f2cff",
  "kind": "structure",
  "lexical_name": "PreservesLatticeGroupLoci",
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
  "slug": "preserveslatticegrouploci--0fa44254e0e41626e84dc52c",
  "source": {
    "blob": "e358fc7dee844c4f6c9166df19e54d0daf73c30b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fa44254e0e41626e84dc52c08d54855ca0dfeaf8e435a79cdbf74c5969adb75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82932aafa85e1b7ca953c243a298403bbc122543ee801a665e7fc27d369f2cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PreservesLatticeGroupLoci {α : Type}
    (source target : CompressedString α) : Type where
  preservesLookup : PreservesSemanticsAndLookup source target
  decodedForward :
    DecodedLocus (decode source) → DecodedLocus (decode target)
  decodedBackward :
    DecodedLocus (decode target) → DecodedLocus (decode source)
  sliceForward :
    SliceLocus (decode source) → SliceLocus (decode target)
  sliceBackward :
    SliceLocus (decode target) → SliceLocus (decode source)
  preservesSliceOrderForward :
    ∀ {left right : SliceLocus (decode source)},
      Slice.le left.slice right.slice →
        Slice.le (sliceForward left).slice (sliceForward right).slice
  preservesSliceOrderBackward :
    ∀ {left right : SliceLocus (decode target)},
      Slice.le left.slice right.slice →
        Slice.le (sliceBackward left).slice (sliceBackward right).slice
  decodedRoundtripLeft :
    ∀ locus, decodedBackward (decodedForward locus) = locus
  decodedRoundtripRight :
    ∀ locus, decodedForward (decodedBackward locus) = locus
  sliceRoundtripLeft :
    ∀ locus, sliceBackward (sliceForward locus) = locus
  sliceRoundtripRight :
    ∀ locus, sliceForward (sliceBackward locus) = locus

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroupLoci/Variant31d2f3bf796ba36083972717039b1f8fe81bd3bb9be1b0fd9ef7c938ffaf71c7.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e358fc7dee844c4f6c9166df19e54d0daf73c30b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
