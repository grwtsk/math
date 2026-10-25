# SphericalExtinctionAssembly.certifiedForSphericalExtinction_of_fields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba27b302-07c4-7714-13eb-799dcfbd0e42",
  "kind": "theorem",
  "lexical_name": "SphericalExtinctionAssembly.certifiedForSphericalExtinction_of_fields",
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
  "slug": "sphericalextinctionassembly-certifiedforsphericalextinction-of-fields--45f49724e6c58fc6b6da88c7",
  "source": {
    "blob": "f6cb37e22876b0a6cbf9c699e4bcfb8c9579c765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 282,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f49724e6c58fc6b6da88c7780ccaacbc68560cdef4747a2cff169afa1b3e86",
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

Occurrence: `result:ba27b302-07c4-7714-13eb-799dcfbd0e42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SphericalExtinctionAssembly.certifiedForSphericalExtinction_of_fields
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
    {surgery :
      PrismaticSphericalSurgeryCertificate
        E rankLoop embedding cohomology}
    (A : SphericalExtinctionAssembly surgery) :
    A.certifiedForSphericalExtinction := by
  exact ⟨
    A.surgeryCertified,
    A.extinctionFlowSurgerySound,
    A.extinctionFlowTopologySound,
    A.flowOperatesOnRelaxedEdgeCertified,
    A.bettiVanishingCertified,
    A.bettiVanishingMatchesSphereCertified,
    A.noSphereTheoremWithoutCertificatesCertified
  ⟩

end PrismaticSurgery
end Topology
end Surface
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/PrismaticSurgery/Variantec536af4a88a298dfb9f9f9b403407e2aa97135e48bcb75b7428a80f22a531de.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6cb37e22876b0a6cbf9c699e4bcfb8c9579c765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
