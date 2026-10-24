# log_one_add_le_add_log_two_of_le_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ece05826-7525-6683-c927-e5d7ad2e66ca",
  "kind": "theorem",
  "lexical_name": "log_one_add_le_add_log_two_of_le_exp",
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
  "slug": "log-one-add-le-add-log-two-of-le-exp--2d4535cb4575eb4284537484",
  "source": {
    "blob": "f4adc42fac164836a6a078d20c997c6f2c3986e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d4535cb4575eb428453748463c9c08bb4cba3c0f752c34c58557d9458d48caf",
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

Occurrence: `result:ece05826-7525-6683-c927-e5d7ad2e66ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_add_le_add_log_two_of_le_exp {x y : ℝ} (hy : 0 ≤ y) (hx : 0 ≤ x)
    (hxy : y ≤ exp x) :
    log (1 + y) ≤ x + log 2 := by
  have hpos : 0 < (1 : ℝ) + y := by linarith
  have hle : (1 : ℝ) + y ≤ 1 + exp x := by linarith
  exact (log_le_log hpos hle).trans (log_one_add_exp_le_add_log_two hx)

/-- A bound on `log (1 + y)` gives the corresponding exponential bound for `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PosLog/Variantc81fcb0096d44a8bc00d42208c7ebeeecab9251dd4e3fb314b4467e4bafca2ca.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4adc42fac164836a6a078d20c997c6f2c3986e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
