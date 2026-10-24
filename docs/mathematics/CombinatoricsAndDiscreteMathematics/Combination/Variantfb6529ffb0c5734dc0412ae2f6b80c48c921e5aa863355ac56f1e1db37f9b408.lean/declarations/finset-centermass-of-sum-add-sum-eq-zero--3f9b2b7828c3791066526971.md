# Finset.centerMass_of_sum_add_sum_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0899e46-63fb-9178-1555-6d21b2a284db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92eba79f-fec0-5261-b330-ab284a3cd16e",
  "kind": "lemma",
  "lexical_name": "Finset.centerMass_of_sum_add_sum_eq_zero",
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
  "slug": "finset-centermass-of-sum-add-sum-eq-zero--3f9b2b7828c3791066526971",
  "source": {
    "blob": "a7508e810a77e8f5b56199340f2f5fe86c4695ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f9b2b7828c3791066526971e02d872dfa9d7eaf86c3fb043437b51d74917914",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92eba79f-fec0-5261-b330-ab284a3cd16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finset.centerMass_of_sum_add_sum_eq_zero {s t : Finset ι}
    (hw : ∑ i ∈ s, w i + ∑ i ∈ t, w i = 0) (hz : ∑ i ∈ s, w i • z i + ∑ i ∈ t, w i • z i = 0) :
    s.centerMass w z = t.centerMass w z := by
  simp [centerMass, eq_neg_of_add_eq_zero_right hw, eq_neg_of_add_eq_zero_left hz]

variable [LinearOrder R] [IsStrictOrderedRing R] [IsOrderedAddMonoid α] [PosSMulMono R α]

/-- The center of mass of a finite subset of a convex set belongs to the set
provided that all weights are non-negative, and the total weight is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantfb6529ffb0c5734dc0412ae2f6b80c48c921e5aa863355ac56f1e1db37f9b408.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7508e810a77e8f5b56199340f2f5fe86c4695ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
