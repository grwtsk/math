# one_le_toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be33ba6913869996acdb845ca35515f87b439e73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 595,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1cc6b30-48c2-9a23-1fe1-ea538170adc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14cfe3f5-f359-bdbb-97be-865501b7a8fb",
  "kind": "lemma",
  "lexical_name": "one_le_toNNReal",
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
  "slug": "one-le-tonnreal--4547b18c1295b46097ddc060",
  "source": {
    "blob": "be33ba6913869996acdb845ca35515f87b439e73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 595,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4547b18c1295b46097ddc060772c1960b82e8c4ab4f462e7138b3e3bf6054981",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14cfe3f5-f359-bdbb-97be-865501b7a8fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_le_toNNReal {r : ℝ} : 1 ≤ r.toNNReal ↔ 1 ≤ r := by
  simpa using toNNReal_le_toNNReal_iff_of_pos one_pos

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be33ba6913869996acdb845ca35515f87b439e73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
