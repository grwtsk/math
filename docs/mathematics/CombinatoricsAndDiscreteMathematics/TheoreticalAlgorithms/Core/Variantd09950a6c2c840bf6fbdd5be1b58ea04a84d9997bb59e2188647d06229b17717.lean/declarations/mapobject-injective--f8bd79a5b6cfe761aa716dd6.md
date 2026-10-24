# mapObject_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c806c7b8e61ea23f40355751171c0dbeef12e2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 455,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e851f0f-94f3-f6bb-4998-c729b1000c35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a897a0af-2619-6c06-9088-9ec63b960f10",
  "kind": "theorem",
  "lexical_name": "mapObject_injective",
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
  "slug": "mapobject-injective--f8bd79a5b6cfe761aa716dd6",
  "source": {
    "blob": "6c806c7b8e61ea23f40355751171c0dbeef12e2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 455,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8bd79a5b6cfe761aa716dd611c2d8f206ff8eb44890e925b95d742a13998246",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a897a0af-2619-6c06-9088-9ec63b960f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapObject_injective
    {source target : Theory}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    {translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope}
    (faithfulness : ObjectFaithfulnessOnScope translation)
    {left right : source.Object}
    (leftInScope : sourceScope.contains left)
    (rightInScope : sourceScope.contains right)
    (mappedEqual : translation.mapObject left = translation.mapObject right) :
    left = right := by
  calc
    left = faithfulness.decoder (translation.mapObject left) :=
      (faithfulness.sourceRoundTrip left leftInScope).symm
    _ = faithfulness.decoder (translation.mapObject right) :=
      congrArg faithfulness.decoder mappedEqual
    _ = right := faithfulness.sourceRoundTrip right rightInScope

end ObjectFaithfulnessOnScope

/--
A loss label is declared metadata unless separately justified.  Only an exact
object decoder/round trip plus proposition reflection for the same translation
can upgrade `Lossless` from a label to a kernel-checked assessment.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variantd09950a6c2c840bf6fbdd5be1b58ea04a84d9997bb59e2188647d06229b17717.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c806c7b8e61ea23f40355751171c0dbeef12e2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
