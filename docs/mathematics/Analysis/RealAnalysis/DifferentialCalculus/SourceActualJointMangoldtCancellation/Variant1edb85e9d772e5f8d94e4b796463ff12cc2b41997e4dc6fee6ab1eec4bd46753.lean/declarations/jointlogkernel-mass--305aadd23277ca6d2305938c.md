# jointLogKernel_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6579d3-ebfd-59e8-21dc-42682d4f3a07",
  "kind": "theorem",
  "lexical_name": "jointLogKernel_mass",
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
  "slug": "jointlogkernel-mass--305aadd23277ca6d2305938c",
  "source": {
    "blob": "0fa26f4c71b597578d9326548c33f91f461a1c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305aadd23277ca6d2305938c8e0e48cdaddadd1717fa25978f87b4dcc32c7510",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6579d3-ebfd-59e8-21dc-42682d4f3a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointLogKernel_mass (b : ℝ) :
    (∫ t in 0..b, jointLogKernel b t) = 1 - Real.exp (-b / 2) := by
  have hd : ∀ t : ℝ, HasDerivAt
      (fun u => Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) (jointLogKernel b t) t := by
    intro t
    simpa only [jointLogKernel, Function.comp_def, id_eq, Pi.sub_def, div_eq_mul_inv, one_mul]
      using ((Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))).sub
        ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2))
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hd t) ((jointLogKernel_continuous b).intervalIntegrable 0 b)
  have he : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [hi]
  simp only [zero_div, Real.exp_zero, mul_one, he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant1edb85e9d772e5f8d94e4b796463ff12cc2b41997e4dc6fee6ab1eec4bd46753.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fa26f4c71b597578d9326548c33f91f461a1c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
