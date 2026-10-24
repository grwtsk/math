# log_7_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d03fc1c9-3533-8bb2-2dd6-e1e49ff7fb02",
  "kind": "theorem",
  "lexical_name": "log_7_lower",
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
  "slug": "log-7-lower--1aa9cce62778e0bca8a700c2",
  "source": {
    "blob": "e1787754c9b9500fafc24967a5ef6a36f203a1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa9cce62778e0bca8a700c2d7cdbd6785ad96a8a65fa1ad2785406bbb9c6374",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03fc1c9-3533-8bb2-2dd6-e1e49ff7fb02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_7_lower : (19459:ℝ)/10000 ≤ Real.log 7 := by
  have h := Real.sum_range_le_log_div (x := ((3:ℝ)/11)) (by norm_num) (by norm_num) 5
  have hid : Real.log 7 = 2*Real.log 2 + Real.log ((7:ℝ)/4) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (4:ℝ) = 2*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 2 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variant86cdaca4596b1a81cd3b8f70c6086efe3c0de571de185bfce2eb8429a6ef8d10.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1787754c9b9500fafc24967a5ef6a36f203a1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
