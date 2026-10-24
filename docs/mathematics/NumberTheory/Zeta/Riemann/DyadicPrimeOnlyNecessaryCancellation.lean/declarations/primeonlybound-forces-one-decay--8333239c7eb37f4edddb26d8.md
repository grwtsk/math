# primeOnlyBound_forces_one_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7a01ae7-ff36-24d9-c4c2-882f0783e2fd",
  "kind": "theorem",
  "lexical_name": "primeOnlyBound_forces_one_decay",
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
  "slug": "primeonlybound-forces-one-decay--8333239c7eb37f4edddb26d8",
  "source": {
    "blob": "984454af1fbfc6085fd9b3a41e83bb33875f3667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 148,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8333239c7eb37f4edddb26d8aa7d62f9b846c7e4065a958617af53a9c68311b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7a01ae7-ff36-24d9-c4c2-882f0783e2fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeOnlyBound_forces_one_decay
    (hP : AllDyadicPrimeOnlyFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ‖greenPrimeOnlyArithmeticFourierCoordinate
            (dyadicScale j) 1‖^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hP η hη
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj
  exact (primeOnly_one_sq_le_stage (dyadicScale j)).trans
    (hbound j hj 2)

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyNecessaryCancellation.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984454af1fbfc6085fd9b3a41e83bb33875f3667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
