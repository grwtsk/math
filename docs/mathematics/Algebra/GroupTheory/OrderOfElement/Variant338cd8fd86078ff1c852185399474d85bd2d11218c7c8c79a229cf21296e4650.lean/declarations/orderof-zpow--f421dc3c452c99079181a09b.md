# orderOf_zpow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "844d4c73681e29ed65c6d80132f05020a0274a0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1072,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7065a9a-bada-0343-1e52-1e12c0e30d7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:839f7765-6cd5-a2b7-5d2f-fd14b2c16db7",
  "kind": "theorem",
  "lexical_name": "orderOf_zpow'",
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
  "slug": "orderof-zpow--f421dc3c452c99079181a09b",
  "source": {
    "blob": "844d4c73681e29ed65c6d80132f05020a0274a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1076,
    "line": 1072,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f421dc3c452c99079181a09b7a902965919e2efe541d98736c806ae2fcb9baf7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839f7765-6cd5-a2b7-5d2f-fd14b2c16db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1072–1076.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_zpow' (x : G) {n : ℤ} (h : n ≠ 0) :
    orderOf (x ^ n) = orderOf x / (orderOf x).gcd n.natAbs := by
  rw [← orderOf_pow' _ (Int.natAbs_ne_zero.mpr h), orderOf_pow_natAbs]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant338cd8fd86078ff1c852185399474d85bd2d11218c7c8c79a229cf21296e4650.lean#L1072).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `844d4c73681e29ed65c6d80132f05020a0274a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
