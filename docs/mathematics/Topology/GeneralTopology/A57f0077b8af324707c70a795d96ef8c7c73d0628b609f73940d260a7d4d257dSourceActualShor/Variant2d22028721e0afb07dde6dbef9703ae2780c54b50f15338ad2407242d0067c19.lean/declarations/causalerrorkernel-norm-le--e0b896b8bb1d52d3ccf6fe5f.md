# causalErrorKernel_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9be203cb-ba43-0247-9c28-9ce5460330c1",
  "kind": "theorem",
  "lexical_name": "causalErrorKernel_norm_le",
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
  "slug": "causalerrorkernel-norm-le--e0b896b8bb1d52d3ccf6fe5f",
  "source": {
    "blob": "5f76c5aee6612c19b48f7037e641e33e7cda748c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b896b8bb1d52d3ccf6fe5f009ff1f818e11f7621780e68dd7e37d599d3aa26",
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

Occurrence: `result:9be203cb-ba43-0247-9c28-9ce5460330c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem causalErrorKernel_norm_le {lam : ℝ} (hlam : 0 < lam) (T r : ℝ) :
    ‖causalErrorKernel lam T r‖ ≤ |actualCenteredMangoldtLogError r| := by
  unfold causalErrorKernel
  by_cases hr : r ≤ T
  · rw [indicator_of_mem (show r ∈ Iic T from hr), Real.norm_eq_abs, abs_mul, Real.abs_exp]
    exact mul_le_of_le_one_right (abs_nonneg _)
      (Real.exp_le_one_iff.mpr (mul_nonpos_of_nonneg_of_nonpos hlam.le (by linarith)))
  · rw [indicator_of_notMem (show r ∉ Iic T from hr), norm_zero]
    exact abs_nonneg _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A57f0077b8af324707c70a795d96ef8c7c73d0628b609f73940d260a7d4d257dSourceActualShor/Variant2d22028721e0afb07dde6dbef9703ae2780c54b50f15338ad2407242d0067c19.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f76c5aee6612c19b48f7037e641e33e7cda748c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
