# trop_mul_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:964a8d0d-1ef5-b9fc-e512-c66e80711dfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2f02d2d-36c1-4cfd-de3a-b7b89d38953e",
  "kind": "theorem",
  "lexical_name": "trop_mul_def",
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
  "slug": "trop-mul-def--d045f6b6d7c930ceb97182b0",
  "source": {
    "blob": "22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 335,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d045f6b6d7c930ceb97182b0996538f1b34d78b2a5b4b1e8c4d1c42eeb573909",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2f02d2d-36c1-4cfd-de3a-b7b89d38953e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trop_mul_def [Add R] (x y : Tropical R) : x * y = trop (untrop x + untrop y) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant957b41e58f205ecb1dbc3b6cb97352b973e27eb1d72f6b79862b69476eccdc2a.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b8fb97bfc19cccf1ffa3db889e4a47fb9a23a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
