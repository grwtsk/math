# cellMajorant_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bff9c4fe-ee25-18ac-85fa-5411a94a47f1",
  "kind": "theorem",
  "lexical_name": "cellMajorant_integral_le",
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
  "slug": "cellmajorant-integral-le--2b4d84da4df0ae5f37f42dfd",
  "source": {
    "blob": "4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4d84da4df0ae5f37f42dfd854f87f90bafcc099def16c8bbd0dcd6a46add48",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bff9c4fe-ee25-18ac-85fa-5411a94a47f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellMajorant_integral_le {c b : ℝ} (hc : 1 < c) (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant c x) ≤ dirichletBudget c := by
  rw [cellMajorant_integral_eq hc hb]
  apply sub_le_self
  apply div_nonneg
  · exact mul_nonneg
      (add_nonneg (add_nonneg (Real.log_nonneg (by norm_num)) (Real.log_nonneg hb))
        (one_div_nonneg.mpr (by linarith)))
      (Real.rpow_nonneg (by linarith) _)
  · linarith

/-- Each actual natural coefficient is bounded by its full preceding cell integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceModuleBuild01/Variante378c164ea16ccaf21e18775f96bd04abd8a80766f4a95998f9e5a14df704625.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b62b1d8a2b49a21dae5ccf0e7c6b5066acfb8d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
