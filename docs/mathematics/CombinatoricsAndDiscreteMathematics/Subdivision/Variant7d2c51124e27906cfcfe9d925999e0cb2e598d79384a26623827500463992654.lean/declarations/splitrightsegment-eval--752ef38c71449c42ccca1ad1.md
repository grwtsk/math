# splitRightSegment_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37ddcd8fe2d1ff6c764eb21fb291388fa0399581",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efa96940-055d-d444-a7cd-7b431478e0c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75ad2600-9f82-6408-f80a-ebc27b747378",
  "kind": "theorem",
  "lexical_name": "splitRightSegment_eval",
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
  "slug": "splitrightsegment-eval--752ef38c71449c42ccca1ad1",
  "source": {
    "blob": "37ddcd8fe2d1ff6c764eb21fb291388fa0399581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 525,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752ef38c71449c42ccca1ad1bf000f255964614756841708a04159b82d937dab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75ad2600-9f82-6408-f80a-ebc27b747378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitRightSegment_eval
    (C : RationalSegment M degree) (tau t : UnitInterval) :
    (splitRightSegment C tau).eval t = C.eval (rightParameter tau t) := by
  calc
    (splitRightSegment C tau).eval t =
        rationalEval degree
          (homogeneousControl (splitRightSegment C tau)) t.1 :=
      (rationalEval_homogeneousControl (splitRightSegment C tau) t).symm
    _ = rationalEval degree
          (weightedSplitRight degree (homogeneousControl C) tau.1) t.1 := by
      rw [homogeneousControl_splitRightSegment]
    _ = rationalEval degree (homogeneousControl C)
          (tau.1 + (1 - tau.1) * t.1) :=
      rationalEval_split_right degree (homogeneousControl C) tau.1 t.1
    _ = rationalEval degree (homogeneousControl C)
          (rightParameter tau t).1 := rfl
    _ = C.eval (rightParameter tau t) :=
      rationalEval_homogeneousControl C (rightParameter tau t)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ddcd8fe2d1ff6c764eb21fb291388fa0399581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
