# source_zero_radical_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d491c6aa-e89e-c3db-97e3-aecf00e2cf59",
  "kind": "theorem",
  "lexical_name": "source_zero_radical_finrank",
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
  "slug": "source-zero-radical-finrank--11e2f87281298e2b926b39e7",
  "source": {
    "blob": "da78187a48933a4a4df9d4ce1470cb08d299eeea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant57c86aab3ccff21d8cdc2e001dc0f2a70f307602b8df59d9ec891b21545a1e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e2f87281298e2b926b39e72d4dcfa01d0aefe33f859de6cc0c29198034415c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant57c86aab3ccff21d8cdc2e001dc0f2a70f307602b8df59d9ec891b21545a1e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d491c6aa-e89e-c3db-97e3-aecf00e2cf59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_zero_radical_finrank (A : ℝ) :
    Module.finrank ℂ ((Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ) =
      (lowerPowerInventory A).card := by
  classical
  let : Module.Finite ℂ CharacteristicOne := ((monic_X_sub_C (1 : ℂ)).pow 2).finite_adjoinRoot
  have heq : LinearMap.ker (sourceZeroObservation A).toLinearMap =
      (Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ := by
    ext x
    rw [LinearMap.mem_ker]
    change sourceZeroObservation A x = 0 ↔ x ∈ Ring.jacobson (LowerPowerZeroFiber A)
    rw [source_zero_fiber_jacobson, ← source_zero_observation_ker_eq_pi, RingHom.mem_ker]
    rfl
  have h := (sourceZeroObservation A).toLinearMap.finrank_range_add_finrank_ker
  rw [LinearMap.range_eq_top.mpr (source_zero_observation_surjective A),
    finrank_top, Module.finrank_pi, heq, source_zero_fiber_finrank] at h
  simpa using Nat.add_left_cancel (show (lowerPowerInventory A).card +
      Module.finrank ℂ ((Ring.jacobson (LowerPowerZeroFiber A)).restrictScalars ℂ) =
      (lowerPowerInventory A).card + (lowerPowerInventory A).card by
    simpa [Fintype.card_coe, two_mul] using h)

end
end FormalResearch.RiemannHypothesis.SourceCharacteristicInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant57c86aab3ccff21d8cdc2e001dc0f2a70f307602b8df59d9ec891b21545a1e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4d9990f2f6e54132b014f1dd1a157c8b67099c528cf8cead06dee83eba105864SourceZeroCharac/Variant57c86aab3ccff21d8cdc2e001dc0f2a70f307602b8df59d9ec891b21545a1e63.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da78187a48933a4a4df9d4ce1470cb08d299eeea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
