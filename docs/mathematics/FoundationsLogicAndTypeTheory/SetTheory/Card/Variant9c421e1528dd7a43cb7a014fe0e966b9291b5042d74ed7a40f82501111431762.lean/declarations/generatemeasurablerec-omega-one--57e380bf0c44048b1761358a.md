# generateMeasurableRec_omega_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fd565d5-d0ac-0fa2-2a51-c7c8a6b5f5b4",
  "kind": "theorem",
  "lexical_name": "generateMeasurableRec_omega_one",
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
  "slug": "generatemeasurablerec-omega-one--57e380bf0c44048b1761358a",
  "source": {
    "blob": "c283471536848bff56e60c0bebca12575a2dd4a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9c421e1528dd7a43cb7a014fe0e966b9291b5042d74ed7a40f82501111431762.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57e380bf0c44048b1761358a253ad14cae4cfda1e5d71a9cdcb76d4c799601a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9c421e1528dd7a43cb7a014fe0e966b9291b5042d74ed7a40f82501111431762.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fd565d5-d0ac-0fa2-2a51-c7c8a6b5f5b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateMeasurableRec_omega_one (s : Set (Set α)) :
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
    exact ⟨_, (isSuccLimit_omega 1).succ_lt hj,
      compl_mem_generateMeasurableRec (Order.lt_succ j) hj'⟩
  · intro f H
    choose I hI using fun n => (H n).1
    simp_rw [exists_prop] at hI
    refine ⟨_, Ordinal.lift_iSup_add_one_lt_of_lt_cof ?_ fun n => (hI n).1,
      iUnion_mem_generateMeasurableRec fun n => ⟨_, Ordinal.lt_iSup_add_one I n, (hI n).2⟩⟩
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9c421e1528dd7a43cb7a014fe0e966b9291b5042d74ed7a40f82501111431762.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Card/Variant9c421e1528dd7a43cb7a014fe0e966b9291b5042d74ed7a40f82501111431762.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c283471536848bff56e60c0bebca12575a2dd4a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
