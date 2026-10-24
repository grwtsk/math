# actualDoubleMixed_rectangle_density_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96343bbf-5ae7-f030-1a35-781fe3b02cf6",
  "kind": "theorem",
  "lexical_name": "actualDoubleMixed_rectangle_density_lower",
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
  "slug": "actualdoublemixed-rectangle-density-lower--653a78c8da4813c90d38bbb1",
  "source": {
    "blob": "bd12a66d6e2d78ec46c417200a5ba5b51b8fbd5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant9a6081f30151ca074ce877936d98ba226c23c6fe92bf5ab5155979ab217d3b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:653a78c8da4813c90d38bbb1abdfe7c1586d53fc634f05b43f8318d650e9f542",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant9a6081f30151ca074ce877936d98ba226c23c6fe92bf5ab5155979ab217d3b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96343bbf-5ae7-f030-1a35-781fe3b02cf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDoubleMixed_rectangle_density_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 64 : ℝ) ≤
      deriv (fun y => deriv (fun x => actualLogMixedDensity A x y) t) (Real.log u) := by
  rw [actualLogMixedDensity_mixed_derivative A (by linarith : 0 < A)]
  have h := mul_le_mul (actualMixed_rectangle_exp_prefactor_lower hA ht hu hu2)
    (actualDoubleMixed_firstColumn_kernel_lower hA ht ht1 hu hu2)
    (by norm_num : (0 : ℝ) ≤ 1 / 32)
    (by positivity : 0 ≤ Real.exp (t / 2) * Real.exp (-Real.log u / 2))
  norm_num at h ⊢
  exact h

/-- These lower bounds occur inside the unchanged strict source support, below the cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant9a6081f30151ca074ce877936d98ba226c23c6fe92bf5ab5155979ab217d3b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/368be0bc0796711c7547ActualDoubleMixedStrictWindowChallenge/Variant9a6081f30151ca074ce877936d98ba226c23c6fe92bf5ab5155979ab217d3b94.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd12a66d6e2d78ec46c417200a5ba5b51b8fbd5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
