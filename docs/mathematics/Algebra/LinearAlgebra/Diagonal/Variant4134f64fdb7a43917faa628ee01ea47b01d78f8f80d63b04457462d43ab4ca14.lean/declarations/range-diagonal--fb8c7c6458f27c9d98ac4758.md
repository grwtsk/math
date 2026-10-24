# range_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a584e3074f9251a32bb4c4e2d4edf800f0d16cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:156d173f-8ec0-c01f-de22-aa463738de40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7878ceb3-3993-9b9f-76f8-3b02e226f72b",
  "kind": "theorem",
  "lexical_name": "range_diagonal",
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
  "slug": "range-diagonal--fb8c7c6458f27c9d98ac4758",
  "source": {
    "blob": "8a584e3074f9251a32bb4c4e2d4edf800f0d16cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb8c7c6458f27c9d98ac4758cdad69c3888b0b6839f9a1f2629467691a654254",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7878ceb3-3993-9b9f-76f8-3b02e226f72b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_diagonal [DecidableEq m] (w : m → K) :
    LinearMap.range (toLin' (diagonal w)) =
      ⨆ i ∈ { i | w i ≠ 0 }, LinearMap.range (LinearMap.single K (fun _ => K) i) := by
  dsimp only [mem_ofPred_eq]
  rw [← Submodule.map_top, ← iSup_range_single, Submodule.map_iSup]
  congr; funext i
  rw [← LinearMap.range_comp, diagonal_comp_single, ← range_smul']

end Semifield

end Matrix

namespace LinearMap

section Field

variable {m : Type*} [Fintype m] {K : Type u} [Field K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a584e3074f9251a32bb4c4e2d4edf800f0d16cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
