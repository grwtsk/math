# fredholm_witness_valid_cannot_replace_explicit_maps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f88b5ab-d187-c472-3e01-a47f5d72ead2",
  "kind": "theorem",
  "lexical_name": "fredholm_witness_valid_cannot_replace_explicit_maps",
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
  "slug": "fredholm-witness-valid-cannot-replace-explicit-maps--0ecf7084c75a5d2656313cf0",
  "source": {
    "blob": "33be4cff06bf41f55f829313b28be8657d04bb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 414,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ecf7084c75a5d2656313cf077a0c3e339c1cb1a5da00977592c4576c94dacd0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f88b5ab-d187-c472-3e01-a47f5d72ead2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fredholm_witness_valid_cannot_replace_explicit_maps
    (F : FredholmStyleFiniteWitness)
    (hF : F.Valid) :
    F.repoLocalStyleLabel = true /\
    F.standardTermSourceArtifactSupplied = false /\
    F.finiteRankTraceClassStageOperator = true /\
    F.decoderReplacementClaim = ClaimStatus.absent /\
    F.inverseSectionReplacementClaim = ClaimStatus.absent /\
    F.roundTripReplacementClaim = ClaimStatus.absent /\
    F.transitionReplacementClaim = ClaimStatus.absent /\
    F.residueAccountingReplacementClaim = ClaimStatus.absent := by
  rcases hF with
    ⟨hRepoLocal, hNoStandardArtifact, hFiniteRank, _hMatrix, _hBases,
      _hDetExpr, _hDet, _hStageOnly, hDecoder, hSection, hRoundTrip,
      hTransition, hResidue, _hNoRH, _hNoModularity, _hNoAnalytic⟩
  exact ⟨hRepoLocal, hNoStandardArtifact, hFiniteRank, hDecoder, hSection,
    hRoundTrip, hTransition, hResidue⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant3e9f668212042dc08f2a99a2225fd0992860d88aa9c81d0866fbefa81409d67b.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33be4cff06bf41f55f829313b28be8657d04bb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
