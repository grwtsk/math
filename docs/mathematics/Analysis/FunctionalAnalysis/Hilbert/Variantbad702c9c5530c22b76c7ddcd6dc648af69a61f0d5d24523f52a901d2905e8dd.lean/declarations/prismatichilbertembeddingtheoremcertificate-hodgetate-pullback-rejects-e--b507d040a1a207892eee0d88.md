# PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "277ddf6b47868ddddce994530e46764d8dcc1bcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0cfd464-637f-70ef-487e-0b292bbfd319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c71726d5-fa2a-8add-e05e-dc4df62ce9fd",
  "kind": "theorem",
  "lexical_name": "PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption",
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
  "slug": "prismatichilbertembeddingtheoremcertificate-hodgetate-pullback-rejects-e--b507d040a1a207892eee0d88",
  "source": {
    "blob": "277ddf6b47868ddddce994530e46764d8dcc1bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b507d040a1a207892eee0d88a4ca459382c8113fe7ec4e1a9206481651510658",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c71726d5-fa2a-8add-e05e-dc4df62ce9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrismaticHilbertEmbeddingTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {C : PrismaticCohomology P X}
    {E : PrismaticHilbertEmbedding.{u, v} C}
    (T : PrismaticHilbertEmbeddingTheoremCertificate E) :
    (∀ S : CertifiedPullbackStructureSheafOfRings
        T.hilbertCertificate.hodgeTateSeed.P
        T.hilbertCertificate.hodgeTateSeed.X,
      T.hilbertCertificate.hodgeTateSeed.C.ODelta_pullbackSheaf? = some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) ∧
    (∀ S : CertifiedPullbackStructureSheafOfRings
        T.hilbertCertificate.hodgeTateSeed.P
        T.hilbertCertificate.hodgeTateSeed.X,
      T.hilbertCertificate.hodgeTateSeed.C.ODeltaBar_pullbackSheaf? =
          some S →
        S.constructionStatus ≠ ConstructionStatus.externalAssumption) :=
  T.hilbertCertificate.hodgeTate_pullback_rejects_externalAssumption

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hilbert/Variantbad702c9c5530c22b76c7ddcd6dc648af69a61f0d5d24523f52a901d2905e8dd.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `277ddf6b47868ddddce994530e46764d8dcc1bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
