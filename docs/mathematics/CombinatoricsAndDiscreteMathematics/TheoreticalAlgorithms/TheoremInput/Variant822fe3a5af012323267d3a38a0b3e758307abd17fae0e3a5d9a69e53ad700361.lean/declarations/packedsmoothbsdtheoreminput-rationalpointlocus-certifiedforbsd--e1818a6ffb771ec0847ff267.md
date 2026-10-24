# PackedSmoothBSDTheoremInput.rationalPointLocus_certifiedForBSD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "625d88600494e21bf3064668d2f3d61d8682374b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e0b2239-ec45-6188-7b73-58ddb993f568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:945f3615-e2f5-1537-8675-8e8ab75e7b35",
  "kind": "theorem",
  "lexical_name": "PackedSmoothBSDTheoremInput.rationalPointLocus_certifiedForBSD",
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
  "slug": "packedsmoothbsdtheoreminput-rationalpointlocus-certifiedforbsd--e1818a6ffb771ec0847ff267",
  "source": {
    "blob": "625d88600494e21bf3064668d2f3d61d8682374b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1627,
    "line": 1622,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1818a6ffb771ec0847ff2674f98e3a15a49c01d0bd07efc12736f8c19eb2dc2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:945f3615-e2f5-1537-8675-8e8ab75e7b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1622–1627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PackedSmoothBSDTheoremInput.rationalPointLocus_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.smoothMW.rationalPointLocusCertifiedForBSD :=
  P.input.rationalPointLocus_certifiedForBSD

/-- The packed smooth BSD input carries finite-generation theorem provenance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremInput/Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361.lean#L1622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625d88600494e21bf3064668d2f3d61d8682374b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
