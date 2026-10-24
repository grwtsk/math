# causalErrorKernel_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f9bd33d-7328-054e-e92b-b971d316da4b",
  "kind": "theorem",
  "lexical_name": "causalErrorKernel_tendsto_zero",
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
  "slug": "causalerrorkernel-tendsto-zero--227b67724c0a42ccb24295a8",
  "source": {
    "blob": "5f76c5aee6612c19b48f7037e641e33e7cda748c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227b67724c0a42ccb24295a82350cf39dc2cd1757f6c5b6c6362d591b10fa446",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f9bd33d-7328-054e-e92b-b971d316da4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem causalErrorKernel_tendsto_zero {lam : ℝ} (hlam : 0 < lam) (r : ℝ) :
    Tendsto (fun T => causalErrorKernel lam T r) atTop (𝓝 0) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-lam * T)) atTop (𝓝 0) := by
    simpa only [Real.rpow_zero, one_mul] using
      tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 lam hlam
  have hh := he.const_mul (actualCenteredMangoldtLogError r * Real.exp (lam * r))
  simp only [mul_zero] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop r] with T hT
  unfold causalErrorKernel
  rw [indicator_of_mem (show r ∈ Iic T from hT),
    show lam * (r - T) = lam * r + -lam * T by ring,
    Real.exp_add]
  ring

/-- Every fixed positive damping has genuine actual causal error limit zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f76c5aee6612c19b48f7037e641e33e7cda748c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
