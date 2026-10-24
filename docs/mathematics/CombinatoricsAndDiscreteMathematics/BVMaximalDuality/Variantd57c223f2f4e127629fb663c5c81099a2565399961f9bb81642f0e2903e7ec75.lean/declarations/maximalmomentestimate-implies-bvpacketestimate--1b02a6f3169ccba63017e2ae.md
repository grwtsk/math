# maximalMomentEstimate_implies_bvPacketEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc65fe81-7f59-2f15-45ab-5759a3e8bbdb",
  "kind": "theorem",
  "lexical_name": "maximalMomentEstimate_implies_bvPacketEstimate",
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
  "slug": "maximalmomentestimate-implies-bvpacketestimate--1b02a6f3169ccba63017e2ae",
  "source": {
    "blob": "26e18def55f66698dc8d3aea7acb75de81452ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b02a6f3169ccba63017e2aebc75b40959bb2bfc94d2bef60a5df3ca237d4582",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc65fe81-7f59-2f15-45ab-5759a3e8bbdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximalMomentEstimate_implies_bvPacketEstimate :
    ConductorThreeMaximalMomentEstimate →
      ConductorThreeBVPacketEstimate := by
  intro hmax epsilon hepsilon
  obtain ⟨C, hC, hbound⟩ := hmax epsilon hepsilon
  refine ⟨4 * C, by positivity, ?_⟩
  intro N weight hN hcost
  calc
    |conductorThreeDiscreteWeightedSum N weight| ≤
        2 * DiscretePacketWeightCost N weight * maxPrefixNorm N :=
      weightedSum_le_two_mul_variation_mul_maxPrefix N weight
    _ = (2 * DiscretePacketWeightCost N weight) * maxPrefixNorm N := by
      ring
    _ ≤ 4 * (C * (N : ℝ) ^ (1 / 2 + epsilon)) := by
      exact mul_le_mul (by linarith) (hbound N hN)
        (maxPrefixNorm_nonneg N) (by positivity)
    _ = (4 * C) * (N : ℝ) ^ (1 / 2 + epsilon) := by ring

end

end Surface.Core.PrimeLattice.BVMaximalDuality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e18def55f66698dc8d3aea7acb75de81452ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
