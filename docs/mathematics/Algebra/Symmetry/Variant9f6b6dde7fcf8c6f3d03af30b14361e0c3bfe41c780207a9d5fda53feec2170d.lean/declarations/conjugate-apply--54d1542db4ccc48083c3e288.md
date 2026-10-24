# conjugate_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4df563fa-f087-674e-30ed-3fff11fe2984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5538c1d0-cd9d-3a95-2625-ab2653363ba2",
  "kind": "theorem",
  "lexical_name": "conjugate_apply",
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
  "slug": "conjugate-apply--54d1542db4ccc48083c3e288",
  "source": {
    "blob": "019fd503b86f32b87105f7a34ddb803ec66b9341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 321,
    "path": "GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d1542db4ccc48083c3e288079dfa96edebe9f0f1fc3145b51047f263f2fc7c",
  "verification": {
    "reference": "docs/verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5538c1d0-cd9d-3a95-2625-ab2653363ba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugate_apply {n : Nat}
    (g H : BitPerm n)
    (x : Bits n) :
    conjugate g H x = g (H (g.symm x)) :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symmetry/Variant9f6b6dde7fcf8c6f3d03af30b14361e0c3bfe41c780207a9d5fda53feec2170d.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `019fd503b86f32b87105f7a34ddb803ec66b9341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
