# exists_isMIntegralCurveAt_of_contMDiffAt_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c7cc8dc-ff64-a460-85d6-ff0d5a70bbd6",
  "kind": "lemma",
  "lexical_name": "exists_isMIntegralCurveAt_of_contMDiffAt_boundaryless",
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
  "slug": "exists-ismintegralcurveat-of-contmdiffat-boundaryless--24b46eb12ba51de99204f559",
  "source": {
    "blob": "179715f4ae536862360cdb2317e31067e8d7b50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24b46eb12ba51de99204f559f916916a0bc4422727b10d605da21c238ba5b710",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c7cc8dc-ff64-a460-85d6-ff0d5a70bbd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isMIntegralCurveAt_of_contMDiffAt_boundaryless
    [CompleteSpace E] [BoundarylessManifold I M]
    (hv : CMDiffAt 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)) x₀) :
    ∃ γ : ℝ → M, γ t₀ = x₀ ∧ IsMIntegralCurveAt γ v t₀ :=
  exists_isMIntegralCurveAt_of_contMDiffAt t₀ hv BoundarylessManifold.isInteriorPoint

variable {t₀}

/-- Local integral curves are unique.

If a $C^1$ vector field `v` admits two local integral curves `γ γ' : ℝ → M` at `t₀` with
`γ t₀ = γ' t₀`, then `γ` and `γ'` agree on some open interval containing `t₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179715f4ae536862360cdb2317e31067e8d7b50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
