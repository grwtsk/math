# endpoint_fiber_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb0144d5-b6e5-7a5c-b178-eb790fd73539",
  "kind": "theorem",
  "lexical_name": "endpoint_fiber_moments",
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
  "slug": "endpoint-fiber-moments--a04cea32ce26a665fc9d02dd",
  "source": {
    "blob": "55328c2d09a9bca74e3c1bddcb2dbb05fda5b083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a04cea32ce26a665fc9d02ddbe7aed2acfc34350432bd1abe7382d25790de6cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0144d5-b6e5-7a5c-b178-eb790fd73539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_fiber_moments (c₁ c₂ c₃ u v u₀ v₀ T : ℝ) (x : Point)
    (h : endpoint c₁ c₂ c₃ u v T x = endpoint c₁ c₂ c₃ u₀ v₀ T x) :
    (c₂-c₁)*u+(c₃-c₂)*v = (c₂-c₁)*u₀+(c₃-c₂)*v₀ ∧
    (c₂-c₁)*u^2+(c₃-c₂)*v^2 = (c₂-c₁)*u₀^2+(c₃-c₂)*v₀^2 := by
  rw [endpoint_formula, endpoint_formula] at h
  have hz := congrArg (fun p : Point => p.2.1) h
  have hy := congrArg (fun p : Point => p.2.2) h
  dsimp at hz hy
  constructor
  · linarith
  · nlinarith [mul_eq_mul_left T (by linarith :
      (c₂-c₁)*u+(c₃-c₂)*v = (c₂-c₁)*u₀+(c₃-c₂)*v₀)]

/-- Central characters use the angular `exp(i κ s)` convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55328c2d09a9bca74e3c1bddcb2dbb05fda5b083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
