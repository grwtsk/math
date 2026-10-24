# positive_envelope_attained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cd01447-9ed8-8b86-b779-5b1f9826f5ec",
  "kind": "theorem",
  "lexical_name": "positive_envelope_attained",
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
  "slug": "positive-envelope-attained--838a4afa4b8567b01665bb25",
  "source": {
    "blob": "874e9702580bca18c2ae7cd010f33a350fc7ff92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralContinuity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:838a4afa4b8567b01665bb2591cf7cb70322cf5173492fb73eac3269b96a4387",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cd01447-9ed8-8b86-b779-5b1f9826f5ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_envelope_attained {T : ℝ} (hT : 0 ≤ T) :
    ∃ t ∈ Icc 0 T, pickup t = positiveEnvelope T := by
  have history : (Icc (0 : ℝ) T).Nonempty := ⟨0, le_rfl, hT⟩
  obtain ⟨t, ht, maximum⟩ :=
    isCompact_Icc.exists_isMaxOn history pickup_continuous.continuousOn
  refine ⟨t, ht, ?_⟩
  rw [positive_envelope_eq_sup hT]
  apply le_antisymm
  · exact le_csSup (positive_envelope_history_bounded T) (mem_image_of_mem pickup ht)
  · apply csSup_le (history.image pickup)
    rintro _ ⟨u, hu, rfl⟩
    exact maximum hu

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupContinuity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedIntegralContinuity.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `874e9702580bca18c2ae7cd010f33a350fc7ff92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
