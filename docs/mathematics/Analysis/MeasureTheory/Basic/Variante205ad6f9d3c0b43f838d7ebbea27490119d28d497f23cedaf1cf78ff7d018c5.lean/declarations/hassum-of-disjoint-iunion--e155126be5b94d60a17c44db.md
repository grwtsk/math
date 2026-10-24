# hasSum_of_disjoint_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95e1b4c7788170393703ee18511f30cc32901362",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5a52662-7d3c-91f8-b843-4cad3bdfbd7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0fc7454-f7c7-0fef-3b6a-7e7d7117f5dc",
  "kind": "theorem",
  "lexical_name": "hasSum_of_disjoint_iUnion",
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
  "slug": "hassum-of-disjoint-iunion--e155126be5b94d60a17c44db",
  "source": {
    "blob": "95e1b4c7788170393703ee18511f30cc32901362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e155126be5b94d60a17c44dbf1fdaa4c40e33753154ee6d63cff547725f13738",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0fc7454-f7c7-0fef-3b6a-7e7d7117f5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_of_disjoint_iUnion (hm : ∀ i, MeasurableSet (f i)) (hd : Pairwise (Disjoint on f)) :
    HasSum (fun i => v (f i)) (v (⋃ i, f i)) := by
  rcases Countable.exists_injective_nat β with ⟨e, he⟩
  rw [← hasSum_extend_zero he]
  convert m_iUnion v (f := Function.extend e f fun _ ↦ ∅) _ _
  · simp only [Pi.zero_def, Function.apply_extend v, Function.comp_def, empty]
  · exact (iSup_extend_bot he _).symm
  · simp [Function.apply_extend MeasurableSet, Function.comp_def, hm]
  · exact hd.disjoint_extend_bot (he.factorsThrough _)

variable [T2Space M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95e1b4c7788170393703ee18511f30cc32901362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
