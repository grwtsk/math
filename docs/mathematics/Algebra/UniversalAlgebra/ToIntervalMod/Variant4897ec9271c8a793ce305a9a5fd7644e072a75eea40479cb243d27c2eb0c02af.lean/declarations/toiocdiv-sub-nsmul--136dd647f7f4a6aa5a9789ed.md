# toIocDiv_sub_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc58ee63535427d7ca38aa8da158f7a5974e9db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4897ec9271c8a793ce305a9a5fd7644e072a75eea40479cb243d27c2eb0c02af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c44c4615-16fd-478e-230d-0d2dff650b3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:080a9710-4f0c-97f4-eba6-e9cd5c979e19",
  "kind": "theorem",
  "lexical_name": "toIocDiv_sub_nsmul",
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
  "slug": "toiocdiv-sub-nsmul--136dd647f7f4a6aa5a9789ed",
  "source": {
    "blob": "3fc58ee63535427d7ca38aa8da158f7a5974e9db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 285,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant4897ec9271c8a793ce305a9a5fd7644e072a75eea40479cb243d27c2eb0c02af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136dd647f7f4a6aa5a9789ed8575c3b8a370ff0a2ac462d517d2d9dea2f4c41e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant4897ec9271c8a793ce305a9a5fd7644e072a75eea40479cb243d27c2eb0c02af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:080a9710-4f0c-97f4-eba6-e9cd5c979e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toIocDiv_sub_nsmul (a b : α) (m : ℕ) : toIocDiv hp a (b - m • p) = toIocDiv hp a b - m :=
  mod_cast toIocDiv_sub_zsmul hp a b m

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Variant4897ec9271c8a793ce305a9a5fd7644e072a75eea40479cb243d27c2eb0c02af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Variant4897ec9271c8a793ce305a9a5fd7644e072a75eea40479cb243d27c2eb0c02af.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc58ee63535427d7ca38aa8da158f7a5974e9db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
