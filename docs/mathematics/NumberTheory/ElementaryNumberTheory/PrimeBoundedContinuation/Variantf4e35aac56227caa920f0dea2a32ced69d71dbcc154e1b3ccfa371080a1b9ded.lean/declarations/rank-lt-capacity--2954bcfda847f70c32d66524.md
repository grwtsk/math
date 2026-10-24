# rank_lt_capacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97ce4215-ec1c-77e3-87bf-4a2ea84383c8",
  "kind": "theorem",
  "lexical_name": "rank_lt_capacity",
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
  "slug": "rank-lt-capacity--2954bcfda847f70c32d66524",
  "source": {
    "blob": "2b7906c5d411a161f0ae5d1325f10c760c17e6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 257,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2954bcfda847f70c32d6652415adf2b18c45c012d3c0ec0f1478f1895878459d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ce4215-ec1c-77e3-87bf-4a2ea84383c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_lt_capacity {radices : List ℕ} (cell : BoundedCell radices) :
    rank cell < cellCapacity radices :=
  (encode cell).isLt

/-- Decoding an encoded state recovers every bounded digit. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b7906c5d411a161f0ae5d1325f10c760c17e6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
