# actualPeriodicColumnEndpointWeight_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:794a806e-947e-cfdc-a553-096b8a709d19",
  "kind": "theorem",
  "lexical_name": "actualPeriodicColumnEndpointWeight_eq_physical",
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
  "slug": "actualperiodiccolumnendpointweight-eq-physical--20afb735998ac03eed35fc1d",
  "source": {
    "blob": "a33e419679b675768d1fb736e5f98ebb8efb20b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Varianted7b81d95cfbf3582e6b325f01eaf003b1ee9f2c2aebe084f869ef200c1cd6a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20afb735998ac03eed35fc1d042b35fbd656f80f517ba8d4d38100cece5fee1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Varianted7b81d95cfbf3582e6b325f01eaf003b1ee9f2c2aebe084f869ef200c1cd6a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:794a806e-947e-cfdc-a553-096b8a709d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicColumnEndpointWeight_eq_physical {A : ℝ} (hA : 0 < A)
    (t : ℝ) (M : ℕ) (hM : 2 ≤ M) :
    actualPeriodicColumnEndpointWeight A t M =
      ∫ x in ((M : ℝ) - 1)..(M : ℝ), actualPeriodicPhysicalCellProfile A t x := by
  have hm : (2 : ℝ) ≤ (M : ℝ) := by exact_mod_cast hM
  have hlb : (M : ℝ) - 1 ≤ (M : ℝ) := by linarith
  have hp (x : ℝ) (hx : x ∈ uIcc ((M : ℝ) - 1) (M : ℝ)) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    linarith [hx.1]
  have hi : ContinuousOn (fun x : ℝ => x⁻¹) (uIcc ((M : ℝ) - 1) (M : ℝ)) :=
    continuousOn_id.inv (fun x hx => (hp x hx).ne')
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    rw [continuous_iff_continuousAt]
    intro s
    exact (twisted_column_hasDerivAt hA t s).continuousAt
  have h := intervalIntegral.integral_comp_mul_deriv
    (fun x hx => Real.hasDerivAt_log (hp x hx).ne') hi ht
  unfold actualPeriodicColumnEndpointWeight actualPeriodicPhysicalCellProfile
  simpa only [Function.comp_apply, div_eq_mul_inv] using h.symm

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Varianted7b81d95cfbf3582e6b325f01eaf003b1ee9f2c2aebe084f869ef200c1cd6a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Varianted7b81d95cfbf3582e6b325f01eaf003b1ee9f2c2aebe084f869ef200c1cd6a6.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33e419679b675768d1fb736e5f98ebb8efb20b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
