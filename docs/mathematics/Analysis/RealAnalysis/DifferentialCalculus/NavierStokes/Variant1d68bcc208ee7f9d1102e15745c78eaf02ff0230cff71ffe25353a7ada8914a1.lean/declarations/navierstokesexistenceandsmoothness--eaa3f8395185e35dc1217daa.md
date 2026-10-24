# NavierStokesExistenceAndSmoothness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f6e6c2b948b6248f87b7e4b0221170531abda12ef67c7db5652902d1ad69707",
  "kind": "structure",
  "lexical_name": "NavierStokesExistenceAndSmoothness",
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
  "slug": "navierstokesexistenceandsmoothness--eaa3f8395185e35dc1217daa",
  "source": {
    "blob": "38096ec925d30a439bac43c870652ca158185b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaa3f8395185e35dc1217daad74ca1c72d8a9b53f06a7d519bef0d00ef2e2397",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f6e6c2b948b6248f87b7e4b0221170531abda12ef67c7db5652902d1ad69707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NavierStokesExistenceAndSmoothness
    (nu : ℝ) (u₀ : ℝ^n → ℝ^n) (f : ℝ^n → ℝ → ℝ^n)
    (v : ℝ^n → ℝ → ℝ^n) (p : ℝ^n → ℝ → ℝ) : Prop where
  /-- The Navier-Stokes equation (equation 1):
  $\partial v/\partial t + (v \cdot \nabla)v = \nu\Delta v - \nabla p + f$. -/
  navier_stokes : ∀ x, ∀ t ≥ 0,
    derivWithin (v x ·) (Set.Ici 0) t + fderiv ℝ (v · t) x (v x t) =
      nu • Δ (v · t) x - gradient (p · t) x + f x t
  /-- Incompressibility constraint (equation 2): $\nabla \cdot v = 0$ for all
  $x$ and $t \ge 0$. -/
  div_free : ∀ x, ∀ t ≥ 0, ∇⬝ (v · t) x = 0
  /-- Initial condition (equation 3): $v(x,0) = u_0(x)$ for all $x$. -/
  initial_condition : ∀ x, v x 0 = u₀ x
  /-- The velocity field is smooth ($C^\infty$) on $\mathbb{R}^n \times [0,\infty)$
  (conditions 6, 11). -/
  velocity_smooth : ContDiffOn ℝ ∞ (↿v) (Set.univ ×ˢ Set.Ici 0)
  /-- The pressure field is smooth ($C^\infty$) on $\mathbb{R}^n \times [0,\infty)$
  (conditions 6, 11). -/
  pressure_smooth : ContDiffOn ℝ ∞ (↿p) (Set.univ ×ˢ Set.Ici 0)

/--
A solution to the Navier-Stokes equations on all of $\mathbb{R}^n$ with appropriate
decay and energy bounds.

In addition to the basic solution properties, we require:
- The velocity is in $L^2$ at each time $t \ge 0$ (finite kinetic energy)
- The total energy remains bounded for all time (condition 7)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38096ec925d30a439bac43c870652ca158185b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
