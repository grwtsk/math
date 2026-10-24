# nndist_eq_nnnorm_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c53ef40d37cf0e7bec06c906575f236270fd5a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e1de72d-1e8c-08c5-d098-3e6a1737fae5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e163983-f44f-85da-8710-0d67766f1f37",
  "kind": "theorem",
  "lexical_name": "nndist_eq_nnnorm_vsub",
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
  "slug": "nndist-eq-nnnorm-vsub--879ac2691a12784eaa8fe09a",
  "source": {
    "blob": "7c53ef40d37cf0e7bec06c906575f236270fd5a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 79,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879ac2691a12784eaa8fe09a1f16e087cbcc25c623dd0cd21d398bc0586da064",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e163983-f44f-85da-8710-0d67766f1f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_eq_nnnorm_vsub (x y : P) : nndist x y = ‖x -ᵥ y‖₊ :=
  NNReal.eq <| dist_eq_norm_vsub V x y


/-- The distance equals the norm of subtracting two points. In this
lemma, it is necessary to have `V` as an explicit argument; otherwise
`rw dist_eq_norm_vsub'` sometimes doesn't work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c53ef40d37cf0e7bec06c906575f236270fd5a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
