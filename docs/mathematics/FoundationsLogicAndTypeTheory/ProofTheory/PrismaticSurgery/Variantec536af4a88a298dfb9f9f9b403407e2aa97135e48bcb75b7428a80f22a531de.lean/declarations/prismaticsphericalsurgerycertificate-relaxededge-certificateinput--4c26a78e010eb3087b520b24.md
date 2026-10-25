# PrismaticSphericalSurgeryCertificate.relaxedEdge_certificateInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278ef7ff-730f-8171-9760-c32c82b834eb",
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
  "slug": "prismaticsphericalsurgerycertificate-relaxededge-certificateinput--4c26a78e010eb3087b520b24",
  "source": {
    "blob": "f6cb37e22876b0a6cbf9c699e4bcfb8c9579c765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c26a78e010eb3087b520b24d81f8534f4fc223992b751aa4d57d6c0e487a22f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278ef7ff-730f-8171-9760-c32c82b834eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–217.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6cb37e22876b0a6cbf9c699e4bcfb8c9579c765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
