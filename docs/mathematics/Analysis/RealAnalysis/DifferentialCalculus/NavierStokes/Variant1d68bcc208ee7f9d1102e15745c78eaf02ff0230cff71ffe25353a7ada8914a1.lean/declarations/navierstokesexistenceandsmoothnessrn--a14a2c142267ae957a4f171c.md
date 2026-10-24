# NavierStokesExistenceAndSmoothnessRn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5be45039a2089d42e9d81d4af04207c8d7db3b14b59c24afc6d9830b0b8f7be",
  "kind": "structure",
  "lexical_name": "NavierStokesExistenceAndSmoothnessRn",
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
  "slug": "navierstokesexistenceandsmoothnessrn--a14a2c142267ae957a4f171c",
  "source": {
    "blob": "38096ec925d30a439bac43c870652ca158185b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a14a2c142267ae957a4f171c356678cb86951c87bbc9615c7b51682d59b25ead",
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

Occurrence: `declaration:f5be45039a2089d42e9d81d4af04207c8d7db3b14b59c24afc6d9830b0b8f7be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NavierStokesExistenceAndSmoothnessRn
    (nu : ℝ) (u₀ : ℝ^n → ℝ^n) (f : ℝ^n → ℝ → ℝ^n)
    (v : ℝ^n → ℝ → ℝ^n) (p : ℝ^n → ℝ → ℝ) : Prop
  extends NavierStokesExistenceAndSmoothness nu u₀ f v p where
  /-- The velocity is square-integrable at each time $t \ge 0$ (condition 7). -/
  integrable : ∀ t ≥ 0, MemLp (‖v · t‖) 2
  /-- The kinetic energy $\int \lVert v(x,t) \rVert^2\,dx$ remains uniformly bounded
  for all time (condition 7), where the integral is the Lebesgue integral. -/
  globally_bounded_energy : ∃ E, ∀ t ≥ 0, (∫ x : ℝ^n, ‖v x t‖ ^ 2) < E

/--
A solution to the Navier-Stokes equations on the $n$-torus $\mathbb{R}^n/\mathbb{Z}^n$.

The velocity must be 1-periodic in each spatial direction for all times (condition 10).
The pressure is also required to be 1-periodic, following the errata appended to the
Clay problem statement.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38096ec925d30a439bac43c870652ca158185b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
