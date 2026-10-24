# commutator_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8558d8d1a2d7344e21deb1ffde7807cf1efad48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c425ff15-78ac-785a-1c28-3e088ce7b361",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a13a8e9-44f1-5b06-62f7-955f3f89faa7",
  "kind": "theorem",
  "lexical_name": "commutator_apply",
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
  "slug": "commutator-apply--4f44a98b025242bf67dae1c5",
  "source": {
    "blob": "d8558d8d1a2d7344e21deb1ffde7807cf1efad48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 40,
    "path": "GRWTSK/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f44a98b025242bf67dae1c5d45ff0578a73a38bc9fff6fa1d4766f98bab60b9",
  "verification": {
    "reference": "docs/verification/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a13a8e9-44f1-5b06-62f7-955f3f89faa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_apply : ⁅D1, D2⁆ a = D1 (D2 a) - D2 (D1 a) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8558d8d1a2d7344e21deb1ffde7807cf1efad48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
