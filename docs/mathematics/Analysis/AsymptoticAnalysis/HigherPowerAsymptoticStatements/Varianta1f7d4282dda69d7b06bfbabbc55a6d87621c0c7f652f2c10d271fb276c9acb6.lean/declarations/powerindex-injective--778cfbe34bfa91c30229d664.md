# powerIndex_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 418,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ea7e5cf-f4e4-ccf6-b102-d49be10959b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f1dc661-6f5a-099a-855f-34abf8efe6ad",
  "kind": "theorem",
  "lexical_name": "powerIndex_injective",
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
  "slug": "powerindex-injective--778cfbe34bfa91c30229d664",
  "source": {
    "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 418,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:778cfbe34bfa91c30229d664899651417493aa22e23800df3bf341018d49eb31",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1dc661-6f5a-099a-855f-34abf8efe6ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerIndex_injective : Function.Injective powerIndex := by
  intro q r h
  have he := prime_power_representation_unique q.1.val r.1.val q.2.val r.2.val
    q.1.property r.1.property (by have := q.2.property; omega)
    (by have := r.2.property; omega) h
  apply Prod.ext
  · exact Subtype.ext he.1
  · exact Subtype.ext he.2

/-- The finite cutoff preimage is finite by proved injectivity, without a sampled enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19f124cbc567f86c2a2c15dd42c62245b68c01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
