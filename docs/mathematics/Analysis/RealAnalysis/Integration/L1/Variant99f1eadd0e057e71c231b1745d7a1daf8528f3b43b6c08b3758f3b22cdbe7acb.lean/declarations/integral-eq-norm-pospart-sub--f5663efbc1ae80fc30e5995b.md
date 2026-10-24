# integral_eq_norm_posPart_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff83e919-9835-83e8-1cf0-9972bbddea67",
  "kind": "theorem",
  "lexical_name": "integral_eq_norm_posPart_sub",
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
  "slug": "integral-eq-norm-pospart-sub--f5663efbc1ae80fc30e5995b",
  "source": {
    "blob": "5920ecca9951406866696dcf79bf2219d0bb186f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 614,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5663efbc1ae80fc30e5995b3338d4ec190205f9d44c10d539b6aa564979bb2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff83e919-9835-83e8-1cf0-9972bbddea67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_eq_norm_posPart_sub (f : α →₁[μ] ℝ) :
    integral f = ‖Lp.posPart f‖ - ‖Lp.negPart f‖ := by
  -- Use `isClosed_property` and `isClosed_eq`
  refine @isClosed_property _ _ _ ((↑) : (α →₁ₛ[μ] ℝ) → α →₁[μ] ℝ)
      (fun f : α →₁[μ] ℝ => integral f = ‖Lp.posPart f‖ - ‖Lp.negPart f‖)
      (simpleFunc.denseRange one_ne_top) (isClosed_eq ?_ ?_) ?_ f
  · simp only [integral]
    exact cont _
  · refine Continuous.sub (continuous_norm.comp Lp.continuous_posPart)
      (continuous_norm.comp Lp.continuous_negPart)
  -- Show that the property holds for all simple functions in the `L¹` space.
  · intro s
    norm_cast
    exact SimpleFunc.integral_eq_norm_posPart_sub _

end PosPart

end IntegrationInL1

end L1

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant99f1eadd0e057e71c231b1745d7a1daf8528f3b43b6c08b3758f3b22cdbe7acb.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5920ecca9951406866696dcf79bf2219d0bb186f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
