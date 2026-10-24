# CandidateSpanFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22d1aea0f3b137f5dd7ca73965b541f16601b23dbc2998d71b679d41c143eda7",
  "kind": "structure",
  "lexical_name": "CandidateSpanFamily",
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
  "slug": "candidatespanfamily--dbe4ebda7df4b4f59ae8580d",
  "source": {
    "blob": "f70ea695af87f38bfcdec49c26820ecb9d6725b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 7,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpanFamily/Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbe4ebda7df4b4f59ae8580dc0ac0a1ba94265ae457b9db301ca4288020ea6ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpanFamily/Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22d1aea0f3b137f5dd7ca73965b541f16601b23dbc2998d71b679d41c143eda7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CandidateSpanFamily (text : TextCarrier) where
  generatorRuleId : StableId
  maximumPhraseLength : Nat
  maximum_positive : 0 < maximumPhraseLength
  spans : List (Span text)
  requiredEvidenceSpans : List (Span text)
  required_covered :
    ∀ required ∈ requiredEvidenceSpans,
      ∃ candidate ∈ spans,
        candidate.SameCoordinates required
  within_bound :
    ∀ candidate ∈ spans,
      candidate.stop - candidate.start ≤ maximumPhraseLength

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpanFamily/Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpanFamily/Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70ea695af87f38bfcdec49c26820ecb9d6725b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
