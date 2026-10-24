# fifthHeight_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58a7f8c9-5a20-3227-a58d-f94883b652a4",
  "kind": "theorem",
  "lexical_name": "fifthHeight_admissible",
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
  "slug": "fifthheight-admissible--28a13f57d8c1789b366404fd",
  "source": {
    "blob": "37b488abc557994755ad6487f27e1e41985cccb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a13f57d8c1789b366404fdfc7b8574da86e058fe4a4c341cc8300cad17b18e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58a7f8c9-5a20-3227-a58d-f94883b652a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fifthHeight_admissible {A : ℝ} (hA : baseRadius ≤ A) :
    1 ≤ A ∧ 2 ≤ fifthHeight A := by
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have h2 : 5*Real.log 2 ≤ A := (le_max_right _ _).trans hA
  refine ⟨h1, ?_⟩
  unfold fifthHeight
  rw [← Real.exp_log (by norm_num : (0:ℝ)<2)]
  exact Real.exp_le_exp.mpr (by linarith)

/-- The complete radius/height budget simplifies exactly along exp(A/5). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b488abc557994755ad6487f27e1e41985cccb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
