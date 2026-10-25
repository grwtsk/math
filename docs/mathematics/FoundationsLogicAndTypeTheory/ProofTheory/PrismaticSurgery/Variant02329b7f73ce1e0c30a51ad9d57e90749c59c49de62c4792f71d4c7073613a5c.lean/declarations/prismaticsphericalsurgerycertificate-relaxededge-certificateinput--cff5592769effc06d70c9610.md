# PrismaticSphericalSurgeryCertificate.relaxedEdge_certificateInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4f5d3b4347396b3f25791728644bad6680c0129",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02329b7f73ce1e0c30a51ad9d57e90749c59c49de62c4792f71d4c7073613a5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fa598e5-501e-80cf-5728-3d845c6f86c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1abc2499-e5a8-64dc-21d5-aaebedbc143a",
  "kind": "theorem",
  "lexical_name": "PrismaticSphericalSurgeryCertificate.relaxedEdge_certificateInput",
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
  "slug": "prismaticsphericalsurgerycertificate-relaxededge-certificateinput--cff5592769effc06d70c9610",
  "source": {
    "blob": "b4f5d3b4347396b3f25791728644bad6680c0129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variant02329b7f73ce1e0c30a51ad9d57e90749c59c49de62c4792f71d4c7073613a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff5592769effc06d70c9610c2b29dfa31ddec99f26e791ae2eb205f6faa808c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variant02329b7f73ce1e0c30a51ad9d57e90749c59c49de62c4792f71d4c7073613a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1abc2499-e5a8-64dc-21d5-aaebedbc143a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrismaticSphericalSurgeryCertificate.relaxedEdge_certificateInput
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    {MW : MordellWeilGroup.{u}}
    {H1 : HomologyGroupH1}
    {R : RankLoopMap MW H1}
    {MWCert : FinitelyGeneratedAbelianCertificate MW}
    {rankLoop : RankLoopEquivalenceCertificate R MWCert}
    {embedding : TopologicalEmbeddingData E}
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {cohomology : PrismaticCohomology P X}
    (C :
      PrismaticSphericalSurgeryCertificate
        E rankLoop embedding cohomology)
    (_h : C.certifiedForSurgery) :
    C.relaxedEdge.certifiedForMajorProof :=
  EdgeRelaxation.LiftCertificate.certifiedForMajorProof_of_fields
    C.relaxedEdge

/--
Assembly data for a later extinction/spherical-resolution argument.

The assembly records how a certified surgery input is linked to a Betti-number
certificate and an extinction-flow operation. It remains a certificate interface:
`certifiedForSphericalExtinction` is not a proof that the resulting space is a
sphere unless the `sphericalResolution` and Betti matching fields are supplied.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variant02329b7f73ce1e0c30a51ad9d57e90749c59c49de62c4792f71d4c7073613a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variant02329b7f73ce1e0c30a51ad9d57e90749c59c49de62c4792f71d4c7073613a5c.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4f5d3b4347396b3f25791728644bad6680c0129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
