# multiple_equally_ranked_closed_candidates_are_ambiguous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d8969228200b5bbc101f58d059c1ef2ab365867",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:866e5080-7f55-cb5b-e7ac-e40239f0d760",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fca1d390-7b2b-5810-9656-0b1d87f10251",
  "kind": "theorem",
  "lexical_name": "multiple_equally_ranked_closed_candidates_are_ambiguous",
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
  "slug": "multiple-equally-ranked-closed-candidates-are-ambiguous--e750267143616bde080ce1a7",
  "source": {
    "blob": "8d8969228200b5bbc101f58d059c1ef2ab365867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 439,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e750267143616bde080ce1a732d731c5272b793d1cc58d3458e6d5ed39c48436",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca1d390-7b2b-5810-9656-0b1d87f10251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiple_equally_ranked_closed_candidates_are_ambiguous
    (first second : ClosedFamilyAliasCandidate)
    (rest : List ClosedFamilyAliasCandidate)
    (_secondRank : first.rank = second.rank)
    (_restRanks :
      ∀ candidate ∈ rest,
        candidate.rank = first.rank) :
    resolveClosedCandidates (first :: second :: rest) =
      .ambiguous (first :: second :: rest) :=
  rfl

/-! ## Coprime label set is not primality -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8969228200b5bbc101f58d059c1ef2ab365867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
