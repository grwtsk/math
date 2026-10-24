# measurePreserving_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b39ca13edfa631f8cbb89bfcc1e13f981286b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef63b4acded1966f7ddc2085bde5c5e2452b4018ed734d28e9cccae8dac1a45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9609cc39-beba-c71d-122c-51a76a7b7cc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be132aab-524b-9a0d-5d6f-0eca3125d1ae",
  "kind": "lemma",
  "lexical_name": "measurePreserving_symm",
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
  "slug": "measurepreserving-symm--db20f43cba5994a632f56d28",
  "source": {
    "blob": "0b39ca13edfa631f8cbb89bfcc1e13f981286b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Analysis/MeasureTheory/UnitInterval/Variant7ef63b4acded1966f7ddc2085bde5c5e2452b4018ed734d28e9cccae8dac1a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db20f43cba5994a632f56d285982cd09dc622622467123c71ede10a0b2e65990",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UnitInterval/Variant7ef63b4acded1966f7ddc2085bde5c5e2452b4018ed734d28e9cccae8dac1a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be132aab-524b-9a0d-5d6f-0eca3125d1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurePreserving_symm : MeasurePreserving symm volume volume where
  measurable := measurable_symm
  map_eq := by
    ext s hs
    apply symmMeasurableEquiv.map_apply _ |>.trans
    conv_lhs => rw [coe_symmMeasurableEquiv, volume_apply, image_coe_preimage_symm,
      ← map_apply (by fun_prop) (measurableSet_Icc.subtype_image hs),
      volume.measurePreserving_sub_left 1 |>.map_eq, ← volume_apply]

open Set

variable (x : I)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UnitInterval/Variant7ef63b4acded1966f7ddc2085bde5c5e2452b4018ed734d28e9cccae8dac1a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UnitInterval/Variant7ef63b4acded1966f7ddc2085bde5c5e2452b4018ed734d28e9cccae8dac1a45.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b39ca13edfa631f8cbb89bfcc1e13f981286b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
