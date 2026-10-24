# fredholm_witness_valid_cannot_replace_explicit_maps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b79e62661e927d66b5d389011fb3436cc4c3600b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99d72f69-c5f1-572e-4aeb-3029c1106149",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74f35fc8-6aca-d732-a882-6bedef6a36e3",
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
  "slug": "fredholm-witness-valid-cannot-replace-explicit-maps--b54b6b22a51eef4761e5aa34",
  "source": {
    "blob": "b79e62661e927d66b5d389011fb3436cc4c3600b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 406,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b54b6b22a51eef4761e5aa34adedba510fda3ddfe96416b54e26850f6b4b2b9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74f35fc8-6aca-d732-a882-6bedef6a36e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–423.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RiemannSchedulerChebyshev/Variant769e57b3fc5385ffa5638a08ed90f6b8de62d401fc2ec5ba14b9f3390ac5d579.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79e62661e927d66b5d389011fb3436cc4c3600b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
