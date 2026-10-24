# log_one_add_exp_le_add_log_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc2512e2-6767-054f-220c-8e58859e9fff",
  "kind": "theorem",
  "lexical_name": "log_one_add_exp_le_add_log_two",
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
  "slug": "log-one-add-exp-le-add-log-two--2776269947351ad8174f963a",
  "source": {
    "blob": "f4adc42fac164836a6a078d20c997c6f2c3986e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2776269947351ad8174f963a1dbcee6e0d869ea02249d07be5edd265a8b27917",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc2512e2-6767-054f-220c-8e58859e9fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_add_exp_le_add_log_two {x : ℝ} (hx : 0 ≤ x) :
    log (1 + exp x) ≤ x + log 2 := by
  have hexp_one : (1 : ℝ) ≤ exp x := by
    simpa using (one_le_exp_iff.2 hx)
  have hadd : 1 + exp x ≤ 2 * exp x := by linarith
  have hlog : log (1 + exp x) ≤ log (2 * exp x) :=
    log_le_log (by positivity) hadd
  calc
    log (1 + exp x) ≤ log (2 * exp x) := hlog
    _ = log 2 + x := by simp [log_mul, add_comm]
    _ = x + log 2 := by ring

/-- If `y ≤ exp x` and `0 ≤ x`, then `log (1 + y) ≤ x + log 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4adc42fac164836a6a078d20c997c6f2c3986e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
