# toPartitionOfUnity_eq_mul_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39c2d63f-8ae0-156e-1e54-5c23bbf2b35f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8eb2813d-5357-a28b-8eb9-227c0d79bd90",
  "kind": "theorem",
  "lexical_name": "toPartitionOfUnity_eq_mul_prod",
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
  "slug": "topartitionofunity-eq-mul-prod--87fc0068207d47dac972b114",
  "source": {
    "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 579,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87fc0068207d47dac972b1149084b760e5bdf7aca04570cee1067059e9bac66c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eb2813d-5357-a28b-8eb9-227c0d79bd90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toPartitionOfUnity_eq_mul_prod (i : ι) (x : X) (t : Finset ι)
    (ht : ∀ j, WellOrderingRel j i → f j x ≠ 0 → j ∈ t) :
    f.toPartitionOfUnity i x = f i x * ∏ j ∈ t with WellOrderingRel j i, (1 - f j x) :=
  f.toPOUFun_eq_mul_prod i x t ht

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6176447c20a96de754c80bb6fa5b6e87cf521b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
