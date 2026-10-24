# verifyCandidateCoverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc4c7d0daa85bb44048bc7af5bbc3e629efa7201522d444434b97f8f28d61946",
  "kind": "def",
  "lexical_name": "verifyCandidateCoverage",
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
  "slug": "verifycandidatecoverage--06bf6109047bbd4bc653dc2f",
  "source": {
    "blob": "40ff78ba6130f55e4420b0bc5468e146690998f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06bf6109047bbd4bc653dc2f40e1948d159918b94430f06ef7c6cc18c3c3f7b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc4c7d0daa85bb44048bc7af5bbc3e629efa7201522d444434b97f8f28d61946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def verifyCandidateCoverage
    (cut : EvidenceCut) :
    Except
      (UnknownObligation cut)
      (Sigma fun required : EvidenceRequiredSpans cut.text =>
        CandidateCoverageCertificate
          cut.candidateSpans required) :=
  match cut.candidateCoverage with
  | some certificate => .ok certificate
  | none =>
      .error
        { id := 1
          kind := .structural .candidateSpanCoverage
          sourceSpans := ∅
          context := none
          blockedAssertions := ∅
          upstreamUnknowns := ∅
          requiredEvidenceKinds := {.human, .lexicalResource}
          requiredInvariant := some "CandidateCoverageCertificate"
          frontierDescription :=
            "Evidence-required spans have no supplied coverage certificate." }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Varianteb9148a7fc56bb3e52a221c16013aa15b9a0007a1c8761a1ee775c1e0b43632d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ff78ba6130f55e4420b0bc5468e146690998f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
