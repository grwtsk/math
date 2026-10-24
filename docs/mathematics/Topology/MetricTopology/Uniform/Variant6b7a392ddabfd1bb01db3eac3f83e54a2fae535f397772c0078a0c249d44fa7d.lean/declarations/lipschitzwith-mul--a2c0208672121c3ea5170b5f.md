# LipschitzWith.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3706fd48b6e245973a097da02a3e69d7404fc703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6069e164-ebb6-4677-b3d0-b9b151940251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffb72953-75dd-77eb-1b50-d525bd20f85c",
  "kind": "lemma",
  "lexical_name": "LipschitzWith.mul",
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
  "slug": "lipschitzwith-mul--a2c0208672121c3ea5170b5f",
  "source": {
    "blob": "3706fd48b6e245973a097da02a3e69d7404fc703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 290,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2c0208672121c3ea5170b5f3e82ef54ddd257a56ab3f54d1838dd1064a13285",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb72953-75dd-77eb-1b50-d525bd20f85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LipschitzWith.mul (hf : LipschitzWith Kf f) (hg : LipschitzWith Kg g) :
    LipschitzWith (Kf + Kg) fun x ↦ f x * g x := by
  simpa [← lipschitzOnWith_univ] using hf.lipschitzOnWith.mul hg.lipschitzOnWith

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Variant6b7a392ddabfd1bb01db3eac3f83e54a2fae535f397772c0078a0c249d44fa7d.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3706fd48b6e245973a097da02a3e69d7404fc703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
