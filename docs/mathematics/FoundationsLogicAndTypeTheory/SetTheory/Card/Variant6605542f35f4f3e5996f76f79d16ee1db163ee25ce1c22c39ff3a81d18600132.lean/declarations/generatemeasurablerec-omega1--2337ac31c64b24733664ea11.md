# generateMeasurableRec_omega1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab995226-6ae2-1b1f-dee1-983d2d6544f4",
  "kind": "theorem",
  "lexical_name": "generateMeasurableRec_omega1",
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
  "slug": "generatemeasurablerec-omega1--2337ac31c64b24733664ea11",
  "source": {
    "blob": "5c0cfc018ade57f92b41f98eb28f508d0d353f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2337ac31c64b24733664ea11113b87f0faf850e0e54a90d544f88f7b2d740d33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab995226-6ae2-1b1f-dee1-983d2d6544f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateMeasurableRec_omega1 (s : Set (Set α)) :
    generateMeasurableRec s (ω₁ : Ordinal.{v}) =
      ⋃ i < (ω₁ : Ordinal.{v}), generateMeasurableRec s i := by
  apply (iUnion₂_subset fun i h => generateMeasurableRec_mono s h.le).antisymm'
  intro t ht
  rw [mem_iUnion₂]
  refine generateMeasurableRec_induction ?_ ?_ ?_ ?_ ht
  · intro t ht
    exact ⟨0, omega_pos 1, self_subset_generateMeasurableRec s 0 ht⟩
  · exact ⟨0, omega_pos 1, empty_mem_generateMeasurableRec s 0⟩
  · rintro u - ⟨j, hj, hj'⟩
    exact ⟨_, (isLimit_omega 1).succ_lt hj,
      compl_mem_generateMeasurableRec (Order.lt_succ j) hj'⟩
  · intro f H
    choose I hI using fun n => (H n).1
    simp_rw [exists_prop] at hI
    refine ⟨_, Ordinal.lsub_lt_ord_lift ?_ fun n => (hI n).1,
      iUnion_mem_generateMeasurableRec fun n => ⟨_, Ordinal.lt_lsub I n, (hI n).2⟩⟩
    rw [mk_nat, lift_aleph0, isRegular_aleph_one.cof_omega_eq]
    exact aleph0_lt_aleph_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant6605542f35f4f3e5996f76f79d16ee1db163ee25ce1c22c39ff3a81d18600132.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c0cfc018ade57f92b41f98eb28f508d0d353f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
