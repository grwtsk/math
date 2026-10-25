# preceqK_total_over_finite_phases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b07132f5b4830ddcc2966fa524b7be9170112cf0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3966950-7a1f-7b58-bf51-af1d419c95eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9145428-54ca-a4bd-607c-8820cc73390f",
  "kind": "theorem",
  "lexical_name": "preceqK_total_over_finite_phases",
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
  "slug": "preceqk-total-over-finite-phases--45e4eddce9cceccf4e1433ac",
  "source": {
    "blob": "b07132f5b4830ddcc2966fa524b7be9170112cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e4eddce9cceccf4e1433ace701237910bb46f04360e7316d427168d59872ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9145428-54ca-a4bd-607c-8820cc73390f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preceqK_total_over_finite_phases
    (graphDistance : Phase -> Phase -> Nat)
    (m p q : Phase) :
    Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m p q ∨
      Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m q p :=
  Think.Pipeline.Center.KakeyaMedoid.preceqK_total graphDistance m p q

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KakeyaMedoidOrderCorrect/Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b07132f5b4830ddcc2966fa524b7be9170112cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
