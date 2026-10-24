# strict_ordinate_weight_eq_closed_integral_sub_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:237d7dff-dcac-8d98-b0ba-7313981dfdce",
  "kind": "theorem",
  "lexical_name": "strict_ordinate_weight_eq_closed_integral_sub_endpoint",
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
  "slug": "strict-ordinate-weight-eq-closed-integral-sub-endpoint--45043097196cfc687aba06d6",
  "source": {
    "blob": "f58a79a8deb9491cb039465c636e51451c8f84e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45043097196cfc687aba06d6445433358cbf252ea67c9def447989900c8f0f7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:237d7dff-dcac-8d98-b0ba-7313981dfdce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_ordinate_weight_eq_closed_integral_sub_endpoint
    (T gamma : ℝ) (hT : 0 < T) (hgamma : 0 < gamma) :
    (if T < gamma then 1/gamma^6 else 0) =
      (∫ x : ℝ in Ioi T, (Ici gamma).indicator ordinateKernel x) -
        (if gamma ≤ T then 1/T^6 else 0) := by
  rw [closed_ordinate_kernel_integral T gamma hT hgamma]
  by_cases h : gamma ≤ T
  · simp [h, not_lt.mpr h]
  · have hg : T < gamma := lt_of_not_ge h
    simp [h, hg, max_eq_right hg.le]

/-- At a touching ordinate the two contributions cancel exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f58a79a8deb9491cb039465c636e51451c8f84e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
