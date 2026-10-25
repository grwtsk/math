# gramNorm_lowerBound_of_unitReadout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72a5343c-2a30-07fc-8a37-8a6527a94eca",
  "kind": "theorem",
  "lexical_name": "gramNorm_lowerBound_of_unitReadout",
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
  "slug": "gramnorm-lowerbound-of-unitreadout--80629ac32da3238b0c738f43",
  "source": {
    "blob": "00e789bb51418f6e4fd6d33b56e1a83d194e5321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadoutObstruction/Variantb57e1ec19517427aca77c952468f802f1c6c0016ae33882351d1a04b9cee9bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80629ac32da3238b0c738f4388f5c6c758ad01334939393696b3b1dd154f7a17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadoutObstruction/Variantb57e1ec19517427aca77c952468f802f1c6c0016ae33882351d1a04b9cee9bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72a5343c-2a30-07fc-8a37-8a6527a94eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramNorm_lowerBound_of_unitReadout {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (hunit : ∀ atom, frame.amplitude atom = 1)
    (R : ℝ) (hR : 0 < R) (hreadout : ‖frame.readout‖ ≤ R) :
    (Fintype.card frame.Atom : ℝ) / R ^ 2 ≤
      ‖packetGramOperator frame‖ := by
  have hcard := unitReadout_forces_cardinality frame hunit
  have hnorm_nonneg : 0 ≤ ‖packetGramOperator frame‖ := norm_nonneg _
  have hreadout_sq : ‖frame.readout‖ ^ 2 ≤ R ^ 2 := by
    exact (sq_le_sq₀ (norm_nonneg _) hR.le).2 hreadout
  have hdominated :
      (Fintype.card frame.Atom : ℝ) ≤
        R ^ 2 * ‖packetGramOperator frame‖ :=
    hcard.trans <| by gcongr
  exact (div_le_iff₀ (sq_pos_of_pos hR)).2 <| by
    simpa [mul_comm] using hdominated

end

end Surface.Core.TypeII.ReadoutObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadoutObstruction/Variantb57e1ec19517427aca77c952468f802f1c6c0016ae33882351d1a04b9cee9bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReadoutObstruction/Variantb57e1ec19517427aca77c952468f802f1c6c0016ae33882351d1a04b9cee9bae.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e789bb51418f6e4fd6d33b56e1a83d194e5321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
