# estimate_of_actual_psi_floor_signed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c8b813d-ace9-d058-05a1-a2f67e28bb6c",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_psi_floor_signed_tail",
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
  "slug": "estimate-of-actual-psi-floor-signed-tail--74d92a4e7be1b978ddae446c",
  "source": {
    "blob": "43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d92a4e7be1b978ddae446ca2f419edf5ad3cc970e07413b6ff67bddb7cdf65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c8b813d-ace9-d058-05a1-a2f67e28bb6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_psi_floor_signed_tail {K R : ℝ} (hR : 25600 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K + 70) (by linarith : 117 ≤ R)
  intro A hRA
  have he := abs_le.mp (complete_pairing_sub_psi_floor_abs_le_seventy (hR.trans hRA))
  have hk := hpsi A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
