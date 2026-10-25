# BlockEventCertificate.signedPairing_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f12fb1b-8c94-9178-dfba-598977ab15a1",
  "kind": "theorem",
  "lexical_name": "BlockEventCertificate.signedPairing_decomposition",
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
  "slug": "blockeventcertificate-signedpairing-decomposition--8bebeaf90bbb7d226aad1fc8",
  "source": {
    "blob": "142826fe07cf71028eab1f53ec14800b7d9e813f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 586,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantfefce53bf92699ae7dedf61a6bc1773447cbe77d69fb19ddd8bc16b892f86de0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bebeaf90bbb7d226aad1fc86c98439dfc973e57460d5a9c324d3c7520c87a4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantfefce53bf92699ae7dedf61a6bc1773447cbe77d69fb19ddd8bc16b892f86de0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f12fb1b-8c94-9178-dfba-598977ab15a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BlockEventCertificate.signedPairing_decomposition {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : BlockEventCertificate parent) (x : ℕ) :
    parent.signedPairing x =
      (∑ child, (certificate.childState child).signedPairing x) -
        typeIIMatrixPairing parent.leftCoefficient
          (certificate.surgery.crossMatrix x) parent.rightCoefficient := by
  rw [parent.signedPairing_eq_cutoffPairing,
    certificate.surgery.cutoff_decomposition, typeIIMatrixPairing_add,
    typeIIMatrixPairing_sum]
  simp_rw [(certificate.childState _).signedPairing_eq_cutoffPairing,
    certificate.child_matrixPairing]
  rw [neg_add_rev]
  rw [← Finset.sum_neg_distrib]
  ring

/-- A proof-carrying structural event. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantfefce53bf92699ae7dedf61a6bc1773447cbe77d69fb19ddd8bc16b892f86de0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantfefce53bf92699ae7dedf61a6bc1773447cbe77d69fb19ddd8bc16b892f86de0.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142826fe07cf71028eab1f53ec14800b7d9e813f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
