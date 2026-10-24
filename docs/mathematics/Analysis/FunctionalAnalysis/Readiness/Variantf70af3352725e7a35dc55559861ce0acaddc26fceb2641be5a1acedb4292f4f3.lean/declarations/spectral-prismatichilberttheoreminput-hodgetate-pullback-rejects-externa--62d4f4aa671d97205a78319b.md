# Spectral.PrismaticHilbertTheoremInput.hodgeTate_pullback_rejects_externalAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51641d68a73283c564ed5dc688e0e4d4d0d3d7e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d96fe679-ac96-0db5-2ea3-358eed28915d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cda48df3-901a-d347-0ff8-b3fa02c77bb3",
  "kind": "theorem",
  "lexical_name": "Spectral.PrismaticHilbertTheoremInput.hodgeTate_pullback_rejects_externalAssumption",
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
  "slug": "spectral-prismatichilberttheoreminput-hodgetate-pullback-rejects-externa--62d4f4aa671d97205a78319b",
  "source": {
    "blob": "51641d68a73283c564ed5dc688e0e4d4d0d3d7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 210,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d4f4aa671d97205a78319be7fbd6f01e8047fe29516297d51f4436a75b8eed",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cda48df3-901a-d347-0ff8-b3fa02c77bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spectral.PrismaticHilbertTheoremInput.hodgeTate_pullback_rejects_externalAssumption
    {p : Nat}
    {P : Prismatic.BoundedPrism.{u} p}
    {X : Prismatic.PadicFormalScheme}
    {C : Prismatic.PrismaticCohomology P X}
    (I : Spectral.PrismaticHilbertTheoremInput.{u, v}
      (P := P) (X := X) (C := C)) :
    (∀ S : Prismatic.CertifiedPullbackStructureSheafOfRings
        I.certificate.hilbertCertificate.hodgeTateSeed.P
        I.certificate.hilbertCertificate.hodgeTateSeed.X,
      I.certificate.hilbertCertificate.hodgeTateSeed.C.ODelta_pullbackSheaf? =
          some S →
        S.constructionStatus ≠
          Prismatic.ConstructionStatus.externalAssumption) ∧
    (∀ S : Prismatic.CertifiedPullbackStructureSheafOfRings
        I.certificate.hilbertCertificate.hodgeTateSeed.P
        I.certificate.hilbertCertificate.hodgeTateSeed.X,
      I.certificate.hilbertCertificate.hodgeTateSeed.C.ODeltaBar_pullbackSheaf? =
          some S →
        S.constructionStatus ≠
          Prismatic.ConstructionStatus.externalAssumption) :=
  I.certificate.hodgeTate_pullback_rejects_externalAssumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variantf70af3352725e7a35dc55559861ce0acaddc26fceb2641be5a1acedb4292f4f3.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51641d68a73283c564ed5dc688e0e4d4d0d3d7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
