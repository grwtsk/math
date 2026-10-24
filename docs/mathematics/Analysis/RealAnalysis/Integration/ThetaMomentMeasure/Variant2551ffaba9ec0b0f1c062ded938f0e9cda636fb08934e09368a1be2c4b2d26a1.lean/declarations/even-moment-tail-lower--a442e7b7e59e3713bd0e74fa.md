# even_moment_tail_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d61a97bbbef77b66bc2c13cda190b37bd32491b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2867685b-7c93-2a45-c9d1-9430cda5d603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfbae5dc-b771-079f-3461-7992604f0f62",
  "kind": "theorem",
  "lexical_name": "even_moment_tail_lower",
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
  "slug": "even-moment-tail-lower--a442e7b7e59e3713bd0e74fa",
  "source": {
    "blob": "6d61a97bbbef77b66bc2c13cda190b37bd32491b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 402,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a442e7b7e59e3713bd0e74fa2b33671d458697aba9d8a36bf8851a60caf745ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfbae5dc-b771-079f-3461-7992604f0f62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_moment_tail_lower (n : ℕ) (r : ℝ) (hr : 0 ≤ r)
    {t : ℝ} (ht : 0 ≤ t) :
    (momentMeasure t).real (Ioi r) * r ^ (2 * n) ≤ moment t (2 * n) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  have hc : IntegrableOn (fun _ : ℝ => r ^ (2 * n)) (Ioi r) (momentMeasure t) :=
    integrable_const _
  have hp := moment_power_integrable (2 * n) ht
  calc
    _ = ∫ _ in Ioi r, r ^ (2 * n) ∂momentMeasure t := by
      rw [setIntegral_const, smul_eq_mul]
    _ ≤ ∫ x in Ioi r, x ^ (2 * n) ∂momentMeasure t :=
      setIntegral_mono_on hc hp.integrableOn measurableSet_Ioi
        (fun x hx => pow_le_pow_left₀ hr (show r ≤ x from hx.le) _)
    _ ≤ moment t (2 * n) := by
      apply setIntegral_le_integral hp
      filter_upwards [] with x
      rw [pow_mul]
      exact pow_nonneg (sq_nonneg x) n

/-- No finite operator-norm radius can bound all actual even moments.
This is an obstruction to a bounded pointed Jacobi realization, not an
obstruction to an unbounded self-adjoint realization with a checked domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d61a97bbbef77b66bc2c13cda190b37bd32491b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
