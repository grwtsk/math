# smul_eq_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbccbdc3-c726-376d-aa7c-6cc80ae474c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07e768ed-e29d-2691-f9ca-ce7df4f5620b",
  "kind": "theorem",
  "lexical_name": "smul_eq_map₂",
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
  "slug": "smul-eq-map--1644a9d29541ae814cb4b0bb",
  "source": {
    "blob": "2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 216,
    "path": "GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1644a9d29541ae814cb4b0bbe73e4ade1c10f80a90732cb5c1a32778c9216e98",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07e768ed-e29d-2691-f9ca-ce7df4f5620b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_eq_map₂ : I • N = Submodule.map₂ (LinearMap.lsmul R M) I N :=
  le_antisymm (smul_le.mpr fun _m hm _n ↦ Submodule.apply_mem_map₂ _ hm)
    (map₂_le.mpr fun _m hm _n ↦ smul_mem_smul hm)

variable (S : Set R) (T : Set M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variantfef4e2fcb531222bc815fedab32b607a689bc4c72633554a97d4b0da01db8163.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b1e8e612d6bede3ee2e3605c3ce71c6af73fc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
