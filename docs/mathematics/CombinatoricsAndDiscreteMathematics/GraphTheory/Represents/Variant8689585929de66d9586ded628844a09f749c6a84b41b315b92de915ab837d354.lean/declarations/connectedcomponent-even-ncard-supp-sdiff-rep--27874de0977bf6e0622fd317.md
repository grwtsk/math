# ConnectedComponent.even_ncard_supp_sdiff_rep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5eb59b3ae31916a68348516dacc3d7c743ce9d30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b363fd3-73c4-69f7-b183-5468ade42276",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec60e63d-fc71-d152-beeb-0a66dc7926a8",
  "kind": "lemma",
  "lexical_name": "ConnectedComponent.even_ncard_supp_sdiff_rep",
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
  "slug": "connectedcomponent-even-ncard-supp-sdiff-rep--27874de0977bf6e0622fd317",
  "source": {
    "blob": "5eb59b3ae31916a68348516dacc3d7c743ce9d30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27874de0977bf6e0622fd317866c1235136900f5cd1f1246b81688fc23762221",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec60e63d-fc71-d152-beeb-0a66dc7926a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConnectedComponent.even_ncard_supp_sdiff_rep {s : Set V} (K : G.ConnectedComponent)
    (hrep : ConnectedComponent.Represents s G.oddComponents) :
    Even (K.supp \ s).ncard := by
  by_cases h : Even K.supp.ncard
  · simpa [hrep.ncard_sdiff_of_notMem
      (by simpa [Set.ncard_image_of_injective, ← Nat.not_odd_iff_even] using h)] using h
  · have : K.supp.ncard ≠ 0 := Nat.ne_of_odd_add (Nat.not_even_iff_odd.mp h)
    rw [hrep.ncard_sdiff_of_mem (Nat.not_even_iff_odd.mp h), Nat.even_sub (by omega)]
    simpa [Nat.even_sub] using Nat.not_even_iff_odd.mp h

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb59b3ae31916a68348516dacc3d7c743ce9d30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
