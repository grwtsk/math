# exists_analytic_tent_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e95c38a2-6a1b-474e-a443-a82ed9d044bd",
  "kind": "theorem",
  "lexical_name": "exists_analytic_tent_remainder",
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
  "slug": "exists-analytic-tent-remainder--408ac33da20550636e59f98a",
  "source": {
    "blob": "e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408ac33da20550636e59f98a840e23135e00a4fbcf86177092e1fc6ed3bf6850",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e95c38a2-6a1b-474e-a443-a82ed9d044bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_analytic_tent_remainder (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g (closedRectangle (leftEdge N) 2 (contourHeight N)) ∧
      ∀ z : ℂ, z ∉ singularHead N → integrand x h z =
        g z + principalSum (singularHead N) (tentCoefficient x h) z := by
  exact finite_pole_subtraction (singularHead N) (integrand x h) (tentCoefficient x h)
    (closedRectangle (leftEdge N) 2 (contourHeight N))
    (analyticAt_integrand_on_closed_off_inventory x h hh ha N)
    (fun p hp => tent_principal_part x h hh ha p ((mem_singularHead_iff N p).mp hp).2)

/-- The closed zeta/tent integral is reduced to an explicit finite rational principal sum.
Rectangular winding normalization, contour limits and prime margins are NOT conclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
