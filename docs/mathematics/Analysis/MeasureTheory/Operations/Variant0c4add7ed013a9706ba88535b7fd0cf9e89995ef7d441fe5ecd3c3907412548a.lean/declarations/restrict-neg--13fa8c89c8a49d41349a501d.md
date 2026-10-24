# restrict_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7552b4b019c573d02b4aede0a3abe8f2e1f7fbc6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 463,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6fc3718-d1b8-4c8a-e69a-995145ea3227",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4107755d-8845-736a-173a-72aea402facd",
  "kind": "theorem",
  "lexical_name": "restrict_neg",
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
  "slug": "restrict-neg--13fa8c89c8a49d41349a501d",
  "source": {
    "blob": "7552b4b019c573d02b4aede0a3abe8f2e1f7fbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 463,
    "path": "GRWTSK/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13fa8c89c8a49d41349a501d8a5608b42108227d99e92a96011f7572b42c861a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4107755d-8845-736a-173a-72aea402facd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_neg (v : VectorMeasure α M) (i : Set α) :
    (-v).restrict i = -(v.restrict i) := by
  by_cases hi : MeasurableSet i
  · ext j hj; simp [restrict_apply _ hi hj]
  · simp [restrict_not_measurable _ hi]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Operations/Variant0c4add7ed013a9706ba88535b7fd0cf9e89995ef7d441fe5ecd3c3907412548a.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7552b4b019c573d02b4aede0a3abe8f2e1f7fbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
