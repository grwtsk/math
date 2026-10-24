# signed_pairing_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:107a822c-4c42-794e-288c-8b5b54adebbb",
  "kind": "theorem",
  "lexical_name": "signed_pairing_integrable",
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
  "slug": "signed-pairing-integrable--7c1ce020332f29e6321ce875",
  "source": {
    "blob": "cd680a1eaf9989e5455ec7976c6772e4ff9f71a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c1ce020332f29e6321ce875b6603f919b91541ae9aae3bccc07686bbe6cc720",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:107a822c-4c42-794e-288c-8b5b54adebbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight sourceSecond A t)
      volume lowerEndpoint (2 * A) := by
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le (source_interval_order A hA)]
  have weight := (source_weight_continuous (by linarith : 0 < A)).integrableOn_Icc
    (a := lowerEndpoint) (b := 2 * A) (μ := volume)
  apply weight.bdd_mul error_profile_measurable.aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
    exact error_profile_bound ht.2

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceSignedIntegrability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CompactProfilePairingIntegrability.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd680a1eaf9989e5455ec7976c6772e4ff9f71a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
