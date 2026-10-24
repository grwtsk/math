# jacobsonSpace_iff_locallyClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "789a939a8cea22ee0d0408b4fcac220fae0ff75e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50736095-f1a7-60f0-e29e-ab34e7479faf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cde086c4-4a32-b4c5-bd20-f379c261ec1e",
  "kind": "lemma",
  "lexical_name": "jacobsonSpace_iff_locallyClosed",
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
  "slug": "jacobsonspace-iff-locallyclosed--5c27ef97752e4b6c6d710c59",
  "source": {
    "blob": "789a939a8cea22ee0d0408b4fcac220fae0ff75e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c27ef97752e4b6c6d710c59a55ba3b5ff8f5e13b430ab126817f9f1ff47dfb2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cde086c4-4a32-b4c5-bd20-f379c261ec1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobsonSpace_iff_locallyClosed :
    JacobsonSpace X ↔ ∀ Z, Z.Nonempty → IsLocallyClosed Z → (Z ∩ closedPoints X).Nonempty := by
  rw [jacobsonSpace_iff]
  constructor
  · simp_rw [isLocallyClosed_iff_isOpen_coborder, coborder, isOpen_compl_iff,
      Set.nonempty_iff_ne_empty]
    intros H Z hZ hZ' e
    have : Z ⊆ closure Z \ Z := by
      refine subset_closure.trans ?_
      nth_rw 1 [← H isClosed_closure]
      rw [hZ'.closure_subset_iff, Set.subset_diff, Set.disjoint_iff, Set.inter_assoc,
        Set.inter_comm _ Z, e]
      exact ⟨Set.inter_subset_left, Set.inter_subset_right⟩
    rw [Set.subset_diff, disjoint_self, Set.bot_eq_empty] at this
    exact hZ this.2
  · intro H Z hZ
    refine subset_antisymm (hZ.closure_subset_iff.mpr Set.inter_subset_left) ?_
    rw [← Set.disjoint_compl_left_iff_subset, Set.disjoint_iff_inter_eq_empty,
      ← Set.not_nonempty_iff_eq_empty]
    intro H'
    have := H _ H' (isClosed_closure.isOpen_compl.isLocallyClosed.inter hZ.isLocallyClosed)
    rw [Set.nonempty_iff_ne_empty, Set.inter_assoc, ne_eq,
      ← Set.disjoint_iff_inter_eq_empty, Set.disjoint_compl_left_iff_subset] at this
    exact this subset_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/JacobsonSpace/Variant4e5650e0560e61c7e5c6c1a968abab453161e05b207bb584f101f8761ed4e4a8.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789a939a8cea22ee0d0408b4fcac220fae0ff75e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
