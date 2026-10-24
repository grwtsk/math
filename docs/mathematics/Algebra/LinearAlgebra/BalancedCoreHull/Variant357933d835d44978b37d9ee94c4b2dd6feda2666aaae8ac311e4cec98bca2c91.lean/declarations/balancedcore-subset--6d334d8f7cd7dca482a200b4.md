# balancedCore_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4044deb4f31cac6de6aaaf4cdf9fe06fc1616bc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ee8fe22-987f-a23d-2a4a-80d53cac8d7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9944da2a-c166-3be5-1a73-2ce42cad3608",
  "kind": "theorem",
  "lexical_name": "balancedCore_subset",
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
  "slug": "balancedcore-subset--6d334d8f7cd7dca482a200b4",
  "source": {
    "blob": "4044deb4f31cac6de6aaaf4cdf9fe06fc1616bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d334d8f7cd7dca482a200b4a3f78075833cb5dbd3366b083c7c8623ffc4b147",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9944da2a-c166-3be5-1a73-2ce42cad3608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedCore_subset (s : Set E) : balancedCore 𝕜 s ⊆ s :=
  sUnion_subset fun _ ht => ht.2
#align balanced_core_subset balancedCore_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant357933d835d44978b37d9ee94c4b2dd6feda2666aaae8ac311e4cec98bca2c91.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4044deb4f31cac6de6aaaf4cdf9fe06fc1616bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
