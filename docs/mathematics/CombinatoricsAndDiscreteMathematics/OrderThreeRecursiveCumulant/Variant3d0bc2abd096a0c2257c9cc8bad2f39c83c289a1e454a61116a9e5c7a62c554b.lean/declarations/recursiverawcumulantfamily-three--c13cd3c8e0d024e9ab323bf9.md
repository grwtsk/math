# recursiveRawCumulantFamily_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09250af7-73ba-cf73-5203-418d8a7581ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f59529a-5b2b-c7ab-50bf-57c73f47397b",
  "kind": "theorem",
  "lexical_name": "recursiveRawCumulantFamily_three",
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
  "slug": "recursiverawcumulantfamily-three--c13cd3c8e0d024e9ab323bf9",
  "source": {
    "blob": "3a1afd3bf2ef95c7161c59f51540003cb21f30ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 681,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c13cd3c8e0d024e9ab323bf95a417fcbd1fc3d880b082912f7f1ea721887cef7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f59529a-5b2b-c7ab-50bf-57c73f47397b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem recursiveRawCumulantFamily_three
    (theta : E)
    (directions : Fin 3 → E) :
    F.recursiveRawCumulantFamily theta 3 directions =
      F.thirdDirectionalCumulant theta directions := by
  rw [recursiveRawCumulantFamily,
    recursiveCumulantFamily_eq_moment_sub_proper
      (F.rawMomentHierarchy theta)
      3 (Nat.succ_pos 2) directions]
  change F.rawMomentHierarchy theta 3 directions -
      directionalProperContribution 3 (Nat.succ_pos 2)
        (F.recursiveRawCumulantFamily theta) directions =
    F.thirdDirectionalCumulant theta directions
  rw [F.recursiveRawProperContribution_three,
    F.rawMomentHierarchy_three_eq_cumulants]
  ring

/-- Recursive raw cumulants now match the verified analytic prefix through
order three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant3d0bc2abd096a0c2257c9cc8bad2f39c83c289a1e454a61116a9e5c7a62c554b.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1afd3bf2ef95c7161c59f51540003cb21f30ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
