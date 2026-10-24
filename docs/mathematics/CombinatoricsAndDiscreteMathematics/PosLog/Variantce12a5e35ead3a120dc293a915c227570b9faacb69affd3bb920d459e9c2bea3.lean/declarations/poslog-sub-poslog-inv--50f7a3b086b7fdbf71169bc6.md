# posLog_sub_posLog_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce2f0d66-cdfa-0fe5-2c54-073c2c5fda47",
  "kind": "theorem",
  "lexical_name": "posLog_sub_posLog_inv",
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
  "slug": "poslog-sub-poslog-inv--50f7a3b086b7fdbf71169bc6",
  "source": {
    "blob": "d7aefd9ffdb51543ce53e92808b7303ed08c41e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f7a3b086b7fdbf71169bc63084bbc4f3293e96deaf0c6fc8aac5648940c887",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce2f0d66-cdfa-0fe5-2c54-073c2c5fda47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posLog_sub_posLog_inv {r : ℝ} : log⁺ r - log⁺ r⁻¹ = log r := by
  rw [posLog_def, posLog_def, log_inv]
  by_cases h : 0 ≤ log r
  · simp [h]
  · rw [not_le] at h
    simp [neg_nonneg.1 (Left.nonneg_neg_iff.2 h.le)]

/-- Presentation of `log⁺` in terms of `log`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosLog/Variantce12a5e35ead3a120dc293a915c227570b9faacb69affd3bb920d459e9c2bea3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7aefd9ffdb51543ce53e92808b7303ed08c41e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
