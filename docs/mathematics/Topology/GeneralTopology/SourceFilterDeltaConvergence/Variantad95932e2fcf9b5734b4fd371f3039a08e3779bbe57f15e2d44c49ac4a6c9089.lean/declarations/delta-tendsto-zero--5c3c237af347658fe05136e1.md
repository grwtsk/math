# delta_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42916fb72d5b61b27f37a997ed913a30055311e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7385a31b-db2a-67b3-d199-79dc0b681514",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbf39bd6-d056-86c1-d9a8-50e9a3a9156e",
  "kind": "theorem",
  "lexical_name": "delta_tendsto_zero",
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
  "slug": "delta-tendsto-zero--5c3c237af347658fe05136e1",
  "source": {
    "blob": "42916fb72d5b61b27f37a997ed913a30055311e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c3c237af347658fe05136e1347c7a3a2a9e8427d2282e8dc6aee0bab033967e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf39bd6-d056-86c1-d9a8-50e9a3a9156e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delta_tendsto_zero (ε h : ℕ → ℝ)
    (hεpos : ∀ j, 0 < ε j) (hεsmall : ∀ j, ε j ≤ 1 / 4) (hhpos : ∀ j, 0 ≤ h j)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0)) :
    Tendsto (fun j => delta (ε j) (h j)) atTop (nhds 0) := by
  simpa only [delta, Real.sqrt_zero, Function.comp_def] using
    (Real.continuous_sqrt.tendsto 0).comp
      (deltaSq_tendsto_zero ε h hεpos hεsmall hhpos hε hh)

end
end SourceFilterDeltaConvergenceScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergence/Variantad95932e2fcf9b5734b4fd371f3039a08e3779bbe57f15e2d44c49ac4a6c9089.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42916fb72d5b61b27f37a997ed913a30055311e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
