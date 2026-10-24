# symmetricLogCombination_alt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef064376-cc41-1b94-18ed-024817734eda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9745e754-1de5-e944-012e-d36e52f429b0",
  "kind": "theorem",
  "lexical_name": "symmetricLogCombination_alt",
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
  "slug": "symmetriclogcombination-alt--b9408aed99ebc65ff70a574d",
  "source": {
    "blob": "df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9408aed99ebc65ff70a574d45e469a8db2b70fdb6fc215df6594ae5d0df43b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9745e754-1de5-e944-012e-d36e52f429b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogCombination_alt (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    symmetricLogCombination t = Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) := by
  unfold symmetricLogCombination
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have hlog1p_pos : Real.log (1 + t) > 0 := Real.log_pos (by linarith : 1 < 1 + t)
  have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg (by linarith) (by linarith : 1 - t < 1)
  have hlog1p_ne : Real.log (1 + t) ≠ 0 := ne_of_gt hlog1p_pos
  have hlog1m_ne : Real.log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
  -- log(1-t²) = log((1-t)(1+t)) = log(1-t) + log(1+t)
  have hlog_prod : Real.log (1 - t^2) = Real.log (1 - t) + Real.log (1 + t) := by
    have h : 1 - t^2 = (1 - t) * (1 + t) := by ring
    rw [h, Real.log_mul (ne_of_gt h1mt_pos) (ne_of_gt h1pt_pos)]
  rw [hlog_prod]
  field_simp

/-- Helper: log(1+t)/t → 1 as t → 0.
    This follows from log'(1) = 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Log1p/Variant5e4a04f6ca5516f610f4a24b78ccc480beb07aa65d0f8b271529d21eefdcc9d8.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e65c8dd9dbebb0789dc64dc85a6a1e594bec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
