# continuousDivisorIntegrand_zero_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:906b4012-84ab-637f-25a0-beab9bcc76b8",
  "kind": "theorem",
  "lexical_name": "continuousDivisorIntegrand_zero_above",
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
  "slug": "continuousdivisorintegrand-zero-above--92656e3cc64f81b41ffe78d0",
  "source": {
    "blob": "7b2281c98a9636de320ac6179c3dcfe0fe37e5a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variantcc937b4e2297bf24bb9193a1e2971b95bca192b1c6bea5fc95781c833d0a055d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92656e3cc64f81b41ffe78d0ef8cfd9a8e4004cac123f202f05074c0eaadc507",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variantcc937b4e2297bf24bb9193a1e2971b95bca192b1c6bea5fc95781c833d0a055d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:906b4012-84ab-637f-25a0-beab9bcc76b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousDivisorIntegrand_zero_above {A d x : ℝ} (hA : 1 ≤ A)
    (hx : Real.exp (2 * A) ≤ x) : continuousDivisorIntegrand A d x = 0 := by
  unfold continuousDivisorIntegrand
  have hz : plainProfile A 1 x = 0 := by
    apply plainProfile_zero_above (by linarith : 0 < A) 1
    simpa only [Real.log_one, sub_zero] using hx
  rw [hz, mul_zero]

/-- Exact positive scaling, including the reciprocal Jacobian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variantcc937b4e2297bf24bb9193a1e2971b95bca192b1c6bea5fc95781c833d0a055d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/69250e284bf978881002SourceOmegaContinuousSector/Variantcc937b4e2297bf24bb9193a1e2971b95bca192b1c6bea5fc95781c833d0a055d.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b2281c98a9636de320ac6179c3dcfe0fe37e5a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
