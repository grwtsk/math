# spatialDerivative_differenceIntegral_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c581787-4a3b-cf03-9271-c8729dff1689",
  "kind": "theorem",
  "lexical_name": "spatialDerivative_differenceIntegral_continuousOn",
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
  "slug": "spatialderivative-differenceintegral-continuouson--a87ef29d3de5da2acc3d54f2",
  "source": {
    "blob": "a4d3bde4d51d675c0f61153b321b0fe5f34c702a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/BasicSourceV2Prebytes/Variantf17172d629e8d2c67898a260322ebed53565f851471fe91a06c2c98b893215b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a87ef29d3de5da2acc3d54f26c9d75fca71bcbc4b3447b691c9ca8711c1ef4fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BasicSourceV2Prebytes/Variantf17172d629e8d2c67898a260322ebed53565f851471fe91a06c2c98b893215b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c581787-4a3b-cf03-9271-c8729dff1689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spatialDerivative_differenceIntegral_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (fun B : ℝ =>
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2)
      (Ioo (A / 2) (2 * A)) := by
  apply continuousOn_integral_of_compact_support (μ := volume)
    (k := Icc (-2 * A) (2 * A)) isCompact_Icc
  · apply ((spatialDerivative_continuousOn_joint.sub
      ((spatialDerivative_continuous hA).comp continuous_snd).continuousOn).pow 2).mono
    intro z hz
    exact ⟨by have := hz.1.1; change 0 < z.1; linarith, mem_univ _⟩
  · intro B x hB hx
    have hBp : 0 < B := by have := hB.1; linarith
    have habs : 2 * A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have hn : x < 0 := by linarith
        rw [abs_of_neg hn]
        linarith
      · exact hx.le.trans (le_abs_self _)
    rw [spatialDerivative_zero_of_le_abs hBp (hB.2.le.trans habs),
      spatialDerivative_zero_of_le_abs hA (by linarith)]
    norm_num

/-- The canonical actual spatial-derivative family is norm-continuous at every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BasicSourceV2Prebytes/Variantf17172d629e8d2c67898a260322ebed53565f851471fe91a06c2c98b893215b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BasicSourceV2Prebytes/Variantf17172d629e8d2c67898a260322ebed53565f851471fe91a06c2c98b893215b7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d3bde4d51d675c0f61153b321b0fe5f34c702a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
