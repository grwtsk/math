# source_tsupport_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35fc3fadd281e44607276ffbaa7ffc1bfa110c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d1c4e5a-3f30-0a49-eeb9-a8e97cf2de49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd90888e-748a-2d8b-744d-588baf843928",
  "kind": "theorem",
  "lexical_name": "source_tsupport_subset",
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
  "slug": "source-tsupport-subset--b7fe6862bceb1d4061e0398a",
  "source": {
    "blob": "b35fc3fadd281e44607276ffbaa7ffc1bfa110c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7fe6862bceb1d4061e0398a424c6a81d692c43d219711c8988c8fa52a5f74ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd90888e-748a-2d8b-744d-588baf843928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (normalizedTest explicitSecondDerivative A) ⊆ Icc (-A) A := by
  apply closure_minimal _ isClosed_Icc
  intro x hx
  by_contra hnot
  have habs : A ≤ |x| := by
    by_cases hleft : -A ≤ x
    · have hright : A < x := lt_of_not_ge (fun h => hnot ⟨hleft, h⟩)
      exact hright.le.trans (le_abs_self x)
    · have hleft' : x < -A := lt_of_not_ge hleft
      have h := neg_le_abs x
      linarith
  exact hx (normalizedTest_zero_of_le_abs A x hA habs)

/-- The derivative of the normalized source profile has the same support bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variant0cafa3c3184810c3bc581e33bedfee095abaf2d36aa3216078e617f76f4974a3.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35fc3fadd281e44607276ffbaa7ffc1bfa110c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
