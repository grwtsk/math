# parityMertensPrefix_even_eq_sum_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ab6051-e38b-1dfb-d2d5-cb4c310c7e58",
  "kind": "theorem",
  "lexical_name": "parityMertensPrefix_even_eq_sum_two_mul",
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
  "slug": "paritymertensprefix-even-eq-sum-two-mul--d92d16a595ae0869bd559361",
  "source": {
    "blob": "2bd5eba1e59195a1f85e7221ab17c410b395d41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92d16a595ae0869bd55936141559367573b908e1340985d59267ff5d348cedc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ab6051-e38b-1dfb-d2d5-cb4c310c7e58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityMertensPrefix_even_eq_sum_two_mul
    (b : ℕ) :
    parityMertensPrefix b 0 =
      ∑ m ∈ Finset.Icc 1 (b / 2), moebiusReal (2 * m) := by
  classical
  unfold parityMertensPrefix endpointParitySet
  refine Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m) ?_ ?_ ?_ ?_ ?_
  · intro u hu
    have hu' := Finset.mem_filter.mp hu
    have huI := Finset.mem_Icc.mp hu'.1
    have huEven := hu'.2
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro m hm
    have hmI := Finset.mem_Icc.mp hm
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    omega
  · intro m hm
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    congr 1
    omega

/-- The even parity Mertens prefix is the negative odd prefix at half scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd5eba1e59195a1f85e7221ab17c410b395d41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
