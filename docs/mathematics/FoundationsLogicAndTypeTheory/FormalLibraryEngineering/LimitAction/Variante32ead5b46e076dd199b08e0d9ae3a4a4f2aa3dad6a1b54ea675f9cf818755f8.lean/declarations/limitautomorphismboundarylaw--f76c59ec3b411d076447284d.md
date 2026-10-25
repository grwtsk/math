# LimitAutomorphismBoundaryLaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f25d6c5c000cf7d6ced1fd48b78b5b5d3c5d7c75f520e544df6aadc8ee97bb6a",
  "kind": "structure",
  "lexical_name": "LimitAutomorphismBoundaryLaw",
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
  "slug": "limitautomorphismboundarylaw--f76c59ec3b411d076447284d",
  "source": {
    "blob": "eabd3281af9e0e9365a4c0b423c4008777ca031d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f76c59ec3b411d076447284d5a47ff7780d94eb8affa6e90642a359a563de403",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f25d6c5c000cf7d6ced1fd48b78b5b5d3c5d7c75f520e544df6aadc8ee97bb6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitAutomorphismBoundaryLaw
    (GroupElement State BoundaryLaw : Type u) where
  action : CutAutomorphismAction GroupElement State
  boundaryLaw : BoundaryLaw
  transformedBoundaryLaw :
    GroupElement → BoundaryLaw → BoundaryLaw
  preserves :
    ∀ groupElement,
      transformedBoundaryLaw groupElement boundaryLaw =
        boundaryLaw
  projectiveActionCertificateRef : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LimitAction/Variante32ead5b46e076dd199b08e0d9ae3a4a4f2aa3dad6a1b54ea675f9cf818755f8.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eabd3281af9e0e9365a4c0b423c4008777ca031d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
