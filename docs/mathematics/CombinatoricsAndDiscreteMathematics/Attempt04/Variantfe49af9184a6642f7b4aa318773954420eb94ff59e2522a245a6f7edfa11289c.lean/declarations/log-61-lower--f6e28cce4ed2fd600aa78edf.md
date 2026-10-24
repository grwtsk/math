# log_61_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8c46b5a-32cd-ca59-e94e-06eb0c414c10",
  "kind": "theorem",
  "lexical_name": "log_61_lower",
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
  "slug": "log-61-lower--f6e28cce4ed2fd600aa78edf",
  "source": {
    "blob": "b254449c4d37d30540ffa8827a7f50b6be413f6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e28cce4ed2fd600aa78edfc12263ced9df519d85fdf713bd473f79428cd3a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c46b5a-32cd-ca59-e94e-06eb0c414c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_61_lower : (41108:ℝ)/10000 ≤ Real.log 61 := by
  have h := Real.sum_range_le_log_div (x := ((29:ℝ)/93)) (by norm_num) (by norm_num) 5
  have hid : Real.log 61 = 5*Real.log 2 + Real.log ((61:ℝ)/32) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
    have hp : Real.log (32:ℝ) = 5*Real.log 2 := by
      convert Real.log_pow (2:ℝ) 5 using 1 <;> norm_num
    rw [hp]
    ring
  norm_num [Finset.sum_range_succ] at h
  have h2 := log_two_fine_lower
  rw [hid]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Variantfe49af9184a6642f7b4aa318773954420eb94ff59e2522a245a6f7edfa11289c.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b254449c4d37d30540ffa8827a7f50b6be413f6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
