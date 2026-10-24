# pointwise_smul_le_pointwise_smul_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3dec32742e9e032517245b53f2f6cf32481b0ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf242c86-ce89-8b0a-1b90-0cc15a63f53a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b94386d5-1112-91c3-ceaa-7bb7e272e60b",
  "kind": "theorem",
  "lexical_name": "pointwise_smul_le_pointwise_smul_iff₀",
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
  "slug": "pointwise-smul-le-pointwise-smul-iff--0bcb3e31f766ea1e6c5ff05e",
  "source": {
    "blob": "b3dec32742e9e032517245b53f2f6cf32481b0ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 138,
    "path": "GRWTSK/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bcb3e31f766ea1e6c5ff05e525d2186ed92f1d3f93c6a3800b30ae28a4248e5",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b94386d5-1112-91c3-ceaa-7bb7e272e60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointwise_smul_le_pointwise_smul_iff₀ {a : M} (ha : a ≠ 0) {S T : Subsemiring R} :
    a • S ≤ a • T ↔ S ≤ T :=
  smul_set_subset_smul_set_iff₀ ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant22d0fa1730725ef8c14967e604db18b64e9d78548bc9adb18d7e590fd8f2766f.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3dec32742e9e032517245b53f2f6cf32481b0ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
