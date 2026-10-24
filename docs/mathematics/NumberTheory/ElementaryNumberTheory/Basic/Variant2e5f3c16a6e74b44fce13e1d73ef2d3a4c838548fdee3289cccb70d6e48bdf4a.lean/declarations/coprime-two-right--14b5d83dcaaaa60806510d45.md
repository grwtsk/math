# coprime_two_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c98aee4d-9d0a-5f9c-91d8-3b4816d35825",
  "kind": "lemma",
  "lexical_name": "coprime_two_right",
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
  "slug": "coprime-two-right--14b5d83dcaaaa60806510d45",
  "source": {
    "blob": "9e7da02c1f206dd8c9490b6aa470fb98e013c31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 140,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b5d83dcaaaa60806510d45dff87147f8bb4c860979434c5a1becc73509f5ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c98aee4d-9d0a-5f9c-91d8-3b4816d35825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coprime_two_right : n.Coprime 2 ↔ Odd n := coprime_comm.trans coprime_two_left

protected alias ⟨Coprime.odd_of_left, _root_.Odd.coprime_two_left⟩ := coprime_two_left
protected alias ⟨Coprime.odd_of_right, _root_.Odd.coprime_two_right⟩ := coprime_two_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e7da02c1f206dd8c9490b6aa470fb98e013c31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
