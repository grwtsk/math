# eventually_ne_of_tendsto_norm_atTop'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f571d6fb8ef5bbc83a1e9b4299bce60090ecbda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 208,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:524e4b43-88ad-6d21-8703-d0fb3897a927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8e7b36d-d769-c654-f643-f0de525bfa44",
  "kind": "theorem",
  "lexical_name": "eventually_ne_of_tendsto_norm_atTop'",
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
  "slug": "eventually-ne-of-tendsto-norm-attop--ae38d98544daea92ae95eed5",
  "source": {
    "blob": "7f571d6fb8ef5bbc83a1e9b4299bce60090ecbda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae38d98544daea92ae95eed52504e73a82bb75963dc62f157749be311f42ad17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e7b36d-d769-c654-f643-f0de525bfa44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_ne_of_tendsto_norm_atTop' {l : Filter α} {f : α → E}
    (h : Tendsto (fun y => ‖f y‖) l atTop) (x : E) : ∀ᶠ y in l, f y ≠ x :=
  (h.eventually_ne_atTop _).mono fun _x => ne_of_apply_ne norm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant1d909e50d60f6cc5a52d9df8fe34737e9f1e3fbeb9da1341272fdacd35dbd64f.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f571d6fb8ef5bbc83a1e9b4299bce60090ecbda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
