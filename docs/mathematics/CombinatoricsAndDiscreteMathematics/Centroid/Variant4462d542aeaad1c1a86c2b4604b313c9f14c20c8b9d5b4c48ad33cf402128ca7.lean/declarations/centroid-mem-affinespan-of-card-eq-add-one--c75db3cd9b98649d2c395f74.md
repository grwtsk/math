# centroid_mem_affineSpan_of_card_eq_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64a4a1703d8e17c03e4c1b6d2adb9638a12615e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7035526-5688-ed76-83c5-12febda81a0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f664fa81-77b4-3e83-6998-f0026f444ea1",
  "kind": "theorem",
  "lexical_name": "centroid_mem_affineSpan_of_card_eq_add_one",
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
  "slug": "centroid-mem-affinespan-of-card-eq-add-one--c75db3cd9b98649d2c395f74",
  "source": {
    "blob": "64a4a1703d8e17c03e4c1b6d2adb9638a12615e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c75db3cd9b98649d2c395f741262f4ccea4907e695dbcb8e7f3f2654b2c5368d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f664fa81-77b4-3e83-6998-f0026f444ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_mem_affineSpan_of_card_eq_add_one [CharZero k] {s : Finset ι} (p : ι → P) {n : ℕ}
    (h : #s = n + 1) : s.centroid k p ∈ affineSpan k (range p) :=
  affineCombination_mem_affineSpan (s.sum_centroidWeights_eq_one_of_card_eq_add_one k h) p

end DivisionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Centroid/Variant4462d542aeaad1c1a86c2b4604b313c9f14c20c8b9d5b4c48ad33cf402128ca7.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a4a1703d8e17c03e4c1b6d2adb9638a12615e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
