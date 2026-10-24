# countable_not_continuousWithinAt_Ioi

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
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc9db9af-24f0-e8e7-a64e-899b78903e92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8eb5eafe-2771-8927-3730-f94f8f9a935f",
  "kind": "theorem",
  "lexical_name": "countable_not_continuousWithinAt_Ioi",
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
  "slug": "countable-not-continuouswithinat-ioi--60d294421656f6ddaf725f01",
  "source": {
    "blob": "2d1bea120d4efa01b0c285f3b67aa379feff4cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d294421656f6ddaf725f01443b8cf812bac30356f9a6b67cf6c7d67cfb8cc8",
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

Occurrence: `result:8eb5eafe-2771-8927-3730-f94f8f9a935f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_not_continuousWithinAt_Ioi [SecondCountableTopology β] :
    Set.Countable { x | ¬ContinuousWithinAt f (Ioi x) x } := by
  apply (countable_image_lt_image_Ioi f).mono
  rintro x (hx : ¬ContinuousWithinAt f (Ioi x) x)
  dsimp
  contrapose! hx
  refine tendsto_order.2 ⟨fun m hm => ?_, fun u hu => ?_⟩
  · filter_upwards [@self_mem_nhdsWithin _ _ x (Ioi x)] with y hy using hm.trans_le
      (hf (le_of_lt hy))
  rcases hx u hu with ⟨v, xv, fvu⟩
  have : Ioo x v ∈ 𝓝[>] x := Ioo_mem_nhdsGT xv
  filter_upwards [this] with y hy
  apply (hf hy.2.le).trans_lt fvu

/-- In a second countable space, the set of points where a monotone function is not left-continuous
is at most countable. Superseded by `countable_not_continuousAt` which gives the two-sided
version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcafe384120cc0b004028b1772a51a35c766e33dd17541752ca0c565e054f30c6.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1bea120d4efa01b0c285f3b67aa379feff4cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
