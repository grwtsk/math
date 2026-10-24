# toFun_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a27d05012a7226bd83f15c4507f1ff1bf083b964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24035ec5-1190-21e5-4a28-20c5a4570986",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:018fb7de-4cd8-7792-6664-a69bb2129803",
  "kind": "theorem",
  "lexical_name": "toFun_eq_coe",
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
  "slug": "tofun-eq-coe--d9aa3b42d05c23f474075e1c",
  "source": {
    "blob": "a27d05012a7226bd83f15c4507f1ff1bf083b964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 445,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9aa3b42d05c23f474075e1cb7a1f7943c6df7e693c35c226221fe233e34c59b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018fb7de-4cd8-7792-6664-a69bb2129803`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFun_eq_coe (f : α →+* β) : f.toFun = f :=
  rfl
#align ring_hom.to_fun_eq_coe RingHom.toFun_eq_coe

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant8ce20e68fbcf6f21e23c94024620694df1d58ba276ac59ab7545e38cab101a32.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a27d05012a7226bd83f15c4507f1ff1bf083b964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
