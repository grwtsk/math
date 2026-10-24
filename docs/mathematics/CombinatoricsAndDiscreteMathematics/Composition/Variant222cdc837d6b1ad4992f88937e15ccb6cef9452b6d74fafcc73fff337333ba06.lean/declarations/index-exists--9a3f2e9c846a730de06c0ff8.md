# index_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77588312-6605-2028-fa34-03928615cdc1",
  "kind": "theorem",
  "lexical_name": "index_exists",
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
  "slug": "index-exists--9a3f2e9c846a730de06c0ff8",
  "source": {
    "blob": "35a54407257146971c55c022fabc2a924f399de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant222cdc837d6b1ad4992f88937e15ccb6cef9452b6d74fafcc73fff337333ba06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a3f2e9c846a730de06c0ff8368cee4cff0a6c4c3dfba45e23c1f9e8527a819f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant222cdc837d6b1ad4992f88937e15ccb6cef9452b6d74fafcc73fff337333ba06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77588312-6605-2028-fa34-03928615cdc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_exists {j : ℕ} (h : j < n) : ∃ i : ℕ, j < c.sizeUpTo (i + 1) ∧ i < c.length := by
  have n_pos : 0 < n := lt_of_le_of_lt (zero_le j) h
  have : 0 < c.blocks.sum := by rwa [← c.blocks_sum] at n_pos
  have length_pos : 0 < c.blocks.length := length_pos_of_sum_pos (blocks c) this
  refine ⟨c.length - 1, ?_, Nat.pred_lt (ne_of_gt length_pos)⟩
  have : c.length - 1 + 1 = c.length := Nat.succ_pred_eq_of_pos length_pos
  simp [this, h]

/-- `c.index j` is the index of the block in the composition `c` containing `j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant222cdc837d6b1ad4992f88937e15ccb6cef9452b6d74fafcc73fff337333ba06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant222cdc837d6b1ad4992f88937e15ccb6cef9452b6d74fafcc73fff337333ba06.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a54407257146971c55c022fabc2a924f399de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
