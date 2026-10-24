# setToFun_finsetSum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bba54b70-1762-177c-7714-5dc39c5315f5",
  "kind": "theorem",
  "lexical_name": "setToFun_finsetSum'",
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
  "slug": "settofun-finsetsum--e1f387afe42c105d88015c8e",
  "source": {
    "blob": "c5f0e17f995d604b6a8a1ce27317904b0412fcb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1f387afe42c105d88015c8ee0c0d7bd65d6c3ac0d8e7e8e523b95c28fd0173d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba54b70-1762-177c-7714-5dc39c5315f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_finsetSum' (hT : DominatedFinMeasAdditive μ T C) {ι} (s : Finset ι)
    {f : ι → α → E} (hf : ∀ i ∈ s, Integrable (f i) μ) :
    setToFun μ T hT (∑ i ∈ s, f i) = ∑ i ∈ s, setToFun μ T hT (f i) := by
  classical
  revert hf
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp only [setToFun_zero, Finset.sum_empty]
  · intro i s his ih hf
    simp only [his, Finset.sum_insert, not_false_iff]
    rw [setToFun_add hT (hf i (Finset.mem_insert_self i s)) _]
    · rw [ih fun i hi => hf i (Finset.mem_insert_of_mem hi)]
    · convert! integrable_finsetSum s fun i hi => hf i (Finset.mem_insert_of_mem hi) with x
      simp

@[deprecated (since := "2026-04-08")] alias setToFun_finset_sum' := setToFun_finsetSum'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Function/Variant43b519a575e581b5e807e5424193b185791b59ac7fe8b82fa22804c0e6bfdae6.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f0e17f995d604b6a8a1ce27317904b0412fcb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
