# proximity_mul_top_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49c6585-32bb-344f-ae79-f5846287d4fc",
  "kind": "theorem",
  "lexical_name": "proximity_mul_top_le",
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
  "slug": "proximity-mul-top-le--c4d1e26de1a027fd3b76a37e",
  "source": {
    "blob": "ac20becf070f5999e74454bfc92839a50486d438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4d1e26de1a027fd3b76a37e986d6c4dea085a06d9dc1dfd23c67c5762680898",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49c6585-32bb-344f-ae79-f5846287d4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proximity_mul_top_le {f₁ f₂ : ℂ → ℂ} (h₁f₁ : Meromorphic f₁) (h₁f₂ : Meromorphic f₂) :
    proximity (f₁ * f₂) ⊤ ≤ proximity f₁ ⊤ + proximity f₂ ⊤ := by
  calc proximity (f₁ * f₂) ⊤
    _ = circleAverage (fun x ↦ log⁺ (‖f₁ x‖ * ‖f₂ x‖)) 0 := by
      simp [proximity]
    _ ≤ circleAverage (fun x ↦ log⁺ ‖f₁ x‖ + log⁺ ‖f₂ x‖) 0 := by
      intro r
      apply circleAverage_mono
      · simp_rw [← norm_mul]
        apply MeromorphicOn.circleIntegrable_posLog_norm
        fun_prop
      · apply (MeromorphicOn.circleIntegrable_posLog_norm h₁f₁.meromorphicOn).add
          (MeromorphicOn.circleIntegrable_posLog_norm h₁f₂.meromorphicOn)
      · exact fun _ _ ↦ posLog_mul
    _ = circleAverage (log⁺ ‖f₁ ·‖) 0 + circleAverage (log⁺ ‖f₂ ·‖) 0 := by
      ext r
      apply circleAverage_add
      · exact MeromorphicOn.circleIntegrable_posLog_norm h₁f₁.meromorphicOn
      · exact MeromorphicOn.circleIntegrable_posLog_norm h₁f₂.meromorphicOn
    _ = proximity f₁ ⊤ + proximity f₂ ⊤ := by simp [proximity]

/--
The proximity function `f * g` at `0` is less than or equal to the sum of the proximity functions of
`f` and `g`, respectively.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3b9da5b9db25becb679b7ef27cdeb6b3e77360c40ae59091ef0369af233f7ffd.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac20becf070f5999e74454bfc92839a50486d438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
