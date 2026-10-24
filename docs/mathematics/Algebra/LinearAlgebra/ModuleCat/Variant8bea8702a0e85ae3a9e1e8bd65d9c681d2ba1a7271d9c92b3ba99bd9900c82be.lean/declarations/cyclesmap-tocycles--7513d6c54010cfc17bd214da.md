# cyclesMap_toCycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36a95ac1-1ec9-710d-8355-b6bf29e3230a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49a34e39-7ad2-f68a-c855-654f0b05e0bd",
  "kind": "theorem",
  "lexical_name": "cyclesMap_toCycles",
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
  "slug": "cyclesmap-tocycles--7513d6c54010cfc17bd214da",
  "source": {
    "blob": "ff4c6c50f53b542bc1ffe0c4c82615ba208a743c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7513d6c54010cfc17bd214dadd604c58d313ab5072a8d98a8f00a4e010a524d8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a34e39-7ad2-f68a-c855-654f0b05e0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclesMap_toCycles (f : C ⟶ D) {i : ι} (x : LinearMap.ker (C.dFrom i)) :
    (cyclesMap f i) (toCycles x) = toCycles ⟨f.f i x.1, by
      rw [LinearMap.mem_ker, Hom.comm_from_apply, x.2, map_zero]⟩ := by
  ext
  rw [cyclesMap_arrow_apply, toKernelSubobject_arrow, toKernelSubobject_arrow]
set_option linter.uppercaseLean3 false in
#align Module.cycles_map_to_cycles ModuleCat.cyclesMap_toCycles

/-- Build a term of `C.homology i` from an element `C.X i` such that `C.d_from i x = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant8bea8702a0e85ae3a9e1e8bd65d9c681d2ba1a7271d9c92b3ba99bd9900c82be.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff4c6c50f53b542bc1ffe0c4c82615ba208a743c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
