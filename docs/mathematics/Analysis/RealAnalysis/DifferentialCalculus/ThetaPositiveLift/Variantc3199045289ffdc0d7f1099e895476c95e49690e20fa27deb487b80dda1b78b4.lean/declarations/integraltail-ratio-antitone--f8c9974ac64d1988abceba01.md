# integralTail_ratio_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60be6034-da0e-2f0d-ab38-af5d9b6a575e",
  "kind": "theorem",
  "lexical_name": "integralTail_ratio_antitone",
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
  "slug": "integraltail-ratio-antitone--f8c9974ac64d1988abceba01",
  "source": {
    "blob": "c6a895ba0074922db80172678e1a519792d139b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c9974ac64d1988abceba013665e0c411abd222f9f3c03c994d3da8dffe098b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60be6034-da0e-2f0d-ab38-af5d9b6a575e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralTail_ratio_antitone {f : ℝ → ℝ} (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Tendsto f atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : AntitoneOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    AntitoneOn (fun u => integralTail f u / f u) (Ici (0 : ℝ)) := by
  have hderiv (t : ℝ) (ht : 0 ≤ t) := hasDerivAt_integralTail_ratio hd hi (hp t ht).ne'
  apply antitoneOn_of_deriv_nonpos (convex_Ici 0)
  · intro t ht
    exact (hderiv t ht).continuousAt.continuousWithinAt
  · intro t ht
    exact (hderiv t (interior_subset ht)).differentiableAt.differentiableWithinAt
  · intro t ht
    rw [(hderiv t (interior_subset ht)).deriv]
    exact div_nonpos_of_nonpos_of_nonneg
      (neg_nonpos.mpr (integralTail_logSlope_nonnegative hd hi hdi hz hp ha (interior_subset ht)))
      (sq_nonneg _)

/-- One literal upper-tail integration preserves antitonicity of the log-slope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc3199045289ffdc0d7f1099e895476c95e49690e20fa27deb487b80dda1b78b4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6a895ba0074922db80172678e1a519792d139b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
