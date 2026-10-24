# countable_not_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:effb71fb-bb25-c6d2-bd5a-60cf443980f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8174cb2-a2d8-b569-9844-67eeafe25783",
  "kind": "theorem",
  "lexical_name": "countable_not_continuousAt",
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
  "slug": "countable-not-continuousat--6c8e36ee836b57f465b86ac8",
  "source": {
    "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c8e36ee836b57f465b86ac896f23e9c3688dd236ef1a2185a251852c2b4b67f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8174cb2-a2d8-b569-9844-67eeafe25783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_not_continuousAt [SecondCountableTopology β] :
    Set.Countable { x | ¬ContinuousAt f x } := by
  apply
    (hf.countable_not_continuousWithinAt_Ioi.union hf.countable_not_continuousWithinAt_Iio).mono
      _
  refine compl_subset_compl.1 ?_
  simp only [compl_union]
  rintro x ⟨hx, h'x⟩
  simp only [mem_setOf_eq, Classical.not_not, mem_compl_iff] at hx h'x ⊢
  exact continuousAt_iff_continuous_left'_right'.2 ⟨h'x, hx⟩

end Monotone

namespace Antitone

variable {α β : Type*} [LinearOrder α] [ConditionallyCompleteLinearOrder β] [TopologicalSpace β]
  [OrderTopology β] {f : α → β} (hf : Antitone f) {x y : α}
include hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1bea120d4efa01b0c285f3b67aa379feff4cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
