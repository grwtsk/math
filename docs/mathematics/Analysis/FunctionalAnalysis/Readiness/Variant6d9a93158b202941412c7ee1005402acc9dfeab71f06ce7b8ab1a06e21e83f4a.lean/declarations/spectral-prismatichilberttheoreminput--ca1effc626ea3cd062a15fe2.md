# Spectral.PrismaticHilbertTheoremInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a076b277a3bc916300cebce8f207c7436ca06aecda1ba460b7416f6b7ae2adf",
  "kind": "structure",
  "lexical_name": "Spectral.PrismaticHilbertTheoremInput",
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
  "slug": "spectral-prismatichilberttheoreminput--ca1effc626ea3cd062a15fe2",
  "source": {
    "blob": "76cfc6836ee5eaaa99e6270044d0da4f12b0be77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 146,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variant6d9a93158b202941412c7ee1005402acc9dfeab71f06ce7b8ab1a06e21e83f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca1effc626ea3cd062a15fe221c231031f970e085d67e1ef1fc232f843d9cb29",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Readiness/Variant6d9a93158b202941412c7ee1005402acc9dfeab71f06ce7b8ab1a06e21e83f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a076b277a3bc916300cebce8f207c7436ca06aecda1ba460b7416f6b7ae2adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Spectral.PrismaticHilbertTheoremInput
    {p : Nat}
    {P : Prismatic.BoundedPrism.{u} p}
    {X : Prismatic.PadicFormalScheme}
    {C : Prismatic.PrismaticCohomology P X} where
  embedding : Prismatic.PrismaticHilbertEmbedding.{u, v} C
  certificate :
    Prismatic.PrismaticHilbertEmbeddingTheoremCertificate embedding
  certificateCertified :
    certificate.certifiedForMajorProof
  boundary : List String

/--
Packed version of the prismatic Hilbert theorem input.

Flow-level scaffolds need to carry this input without fixing the prism, formal
scheme, or cohomology object in their own type parameters.  The packed object is
still theorem-facing: it contains a concrete embedding plus the theorem-grade
certificate for that embedding.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Readiness/Variant6d9a93158b202941412c7ee1005402acc9dfeab71f06ce7b8ab1a06e21e83f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Readiness/Variant6d9a93158b202941412c7ee1005402acc9dfeab71f06ce7b8ab1a06e21e83f4a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76cfc6836ee5eaaa99e6270044d0da4f12b0be77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
