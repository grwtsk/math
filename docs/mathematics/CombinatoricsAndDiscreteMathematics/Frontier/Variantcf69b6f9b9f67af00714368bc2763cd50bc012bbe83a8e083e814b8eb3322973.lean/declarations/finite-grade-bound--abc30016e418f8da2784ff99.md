# finite_grade_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3abed52e09e9bc816614d6c4e4d0c5d1b5531aad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9da3c496-c9dc-cfc6-5c90-e6bca988589b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3217215-bfd5-1aa3-0356-b44a0a25af99",
  "kind": "theorem",
  "lexical_name": "finite_grade_bound",
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
  "slug": "finite-grade-bound--abc30016e418f8da2784ff99",
  "source": {
    "blob": "3abed52e09e9bc816614d6c4e4d0c5d1b5531aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abc30016e418f8da2784ff9949b6f23d95bfa7a601798b84811170006cb6c1d0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3217215-bfd5-1aa3-0356-b44a0a25af99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_grade_bound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation) :
    (frequencyValues cut unresolvedSet).card ≤
      unresolvedSet.card :=
  Finset.card_image_le

/--
The dimension list is a checked runtime witness for the basis-cardinality
chain.  Strict drops certify removal of exactly one nonempty frequency grade.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Frontier/Variantcf69b6f9b9f67af00714368bc2763cd50bc012bbe83a8e083e814b8eb3322973.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3abed52e09e9bc816614d6c4e4d0c5d1b5531aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
