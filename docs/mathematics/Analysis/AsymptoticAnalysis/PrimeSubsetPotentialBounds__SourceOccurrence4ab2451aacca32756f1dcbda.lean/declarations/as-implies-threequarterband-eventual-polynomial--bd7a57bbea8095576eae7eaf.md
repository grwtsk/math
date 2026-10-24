# AS_implies_threeQuarterBand_eventual_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:617fb0d9-c70d-6b9b-1117-cf1c12cfe0b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9bbd6fb-9faa-cff6-e9d7-0d50e5aac8d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c07b03b2-e82b-0178-9290-fd6bea03d78c",
  "kind": "theorem",
  "lexical_name": "AS_implies_threeQuarterBand_eventual_polynomial",
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
  "slug": "as-implies-threequarterband-eventual-polynomial--bd7a57bbea8095576eae7eaf",
  "source": {
    "blob": "a75c268fe2e095f5faa49f0dbfa6cc5212d4b623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 209,
    "path": "GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd7a57bbea8095576eae7eafed0fa9edda26a53f6fa3d28bca7db3c1e9301c90",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07b03b2-e82b-0178-9290-fd6bea03d78c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AS_implies_threeQuarterBand_eventual_polynomial
    (A : ReserveFunctional) (C q η : ℝ) (hAS : ASObligation A C q η) :
    ∃ K R : ℝ, 0 ≤ K ∧ 0 ≤ R ∧
      ∀ᶠ T : ℝ in Filter.atTop,
        sourceEnergy (Obstruction.primeBand (3/4) T) T ≤ K*(1+T)^R := by
  obtain ⟨K, R, hK, hR, hbound⟩ := AS_implies_uniform_subset_polynomial A C q η hAS
  refine ⟨K, R, hK, hR, ?_⟩
  filter_upwards [threeQuarterBand_eventually_eligible hAS.2.2.1] with T hT
  exact hbound T hT.1 _ (primeBand_subset_inventory _ _) hT.2

end EulerP04RH.ASSubsetClosure
#print axioms EulerP04RH.ASSubsetClosure.subset_potential_bound
#print axioms EulerP04RH.ASSubsetClosure.AS_implies_uniform_subset_polynomial

#print axioms EulerP04RH.ASSubsetClosure.threeQuarterBand_eventually_eligible
#print axioms EulerP04RH.ASSubsetClosure.AS_implies_threeQuarterBand_eventual_polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSubsetPotentialBounds__SourceOccurrence4ab2451aacca32756f1dcbda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PrimeSubsetPotentialBounds.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75c268fe2e095f5faa49f0dbfa6cc5212d4b623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
