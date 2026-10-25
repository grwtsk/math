# eval_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b693f34a-21e5-f7c1-64cf-407412c02bfe",
  "kind": "theorem",
  "lexical_name": "eval_id",
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
  "slug": "eval-id--66bcffc9c6bf845f2a71934c",
  "source": {
    "blob": "3b70c96c4dc430a86a207a02068c0aa2e16f3254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 517,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66bcffc9c6bf845f2a71934cc0d7c11cd36afe7d9ad6de755b0982c85c4398ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b693f34a-21e5-f7c1-64cf-407412c02bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_id (n) : eval Code.id n = Part.some n := by simp! [Seq.seq, Code.id]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantda6e858224a31420f9a01eb200bfeaca1cbc32d5c94f1693f7969078ef8bfd0d.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b70c96c4dc430a86a207a02068c0aa2e16f3254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
