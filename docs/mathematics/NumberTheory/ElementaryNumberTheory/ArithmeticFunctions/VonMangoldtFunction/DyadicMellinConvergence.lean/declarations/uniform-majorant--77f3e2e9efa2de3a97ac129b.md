# uniform_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6665e338-e5d1-4de1-7c04-b446c896be25",
  "kind": "theorem",
  "lexical_name": "uniform_majorant",
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
  "slug": "uniform-majorant--77f3e2e9efa2de3a97ac129b",
  "source": {
    "blob": "4476090f7cdaa4ac900e5ef988877bc3f7f56cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f3e2e9efa2de3a97ac129b666093a0b98c7b88592e493629a4b90b98c95d3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6665e338-e5d1-4de1-7c04-b446c896be25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_majorant (hE : AllDyadicEnergyBound)
    {σ M : ℝ} (hσ : 1/2 < σ) (hM : 0 ≤ M) :
    ∃ u : ℕ → ℝ, Summable u ∧ (∀ j, 0 ≤ u j) ∧
      ∀ (j : ℕ) (s : ℂ), σ ≤ s.re → ‖s‖ ≤ M → ‖dirichletBlock (dyadicScale j) s‖ ≤ u j := by
  let η : ℝ := σ-1/2
  let a : ℝ := σ-1/2-η/2
  have hη : 0 < η := by dsimp [η]; linarith
  have ha : 0 < a := by dsimp [a,η]; linarith
  obtain ⟨C,hC,hbound⟩ := uniform_energy_constant hE hη
  let K : ℝ := Real.sqrt C*Real.sqrt (radiusBudget M)
  refine ⟨fun j => K*dyadicWeight a j,
    (summable_dyadicWeight a ha).mul_left K, ?_, ?_⟩
  · intro j
    unfold K dyadicWeight
    positivity
  · intro j s hσs hs
    have h := energy_to_geometric_bound (dyadicScale_pos j) hC hM hs hσs (hbound j)
    simpa [K, a, dyadicWeight, log_dyadicScale, mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4476090f7cdaa4ac900e5ef988877bc3f7f56cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
