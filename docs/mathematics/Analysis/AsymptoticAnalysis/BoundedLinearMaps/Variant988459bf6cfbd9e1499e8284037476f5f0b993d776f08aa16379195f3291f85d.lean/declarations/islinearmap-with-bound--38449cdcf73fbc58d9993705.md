# IsLinearMap.with_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89f1036badeac4e4df6ebf3d8d033ebd0492a9cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e62ec248-b7f9-9a2f-f711-fa2fc03d8add",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92867f1c-043e-b1ac-6a70-cb1cdd0114e0",
  "kind": "theorem",
  "lexical_name": "IsLinearMap.with_bound",
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
  "slug": "islinearmap-with-bound--38449cdcf73fbc58d9993705",
  "source": {
    "blob": "89f1036badeac4e4df6ebf3d8d033ebd0492a9cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38449cdcf73fbc58d99937055bc20b4cdbb5f40b6f089d6d9fa1fbd11e84ea26",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92867f1c-043e-b1ac-6a70-cb1cdd0114e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLinearMap.with_bound {f : E → F} (hf : IsLinearMap 𝕜 f) (M : ℝ)
    (h : ∀ x : E, ‖f x‖ ≤ M * ‖x‖) : IsBoundedLinearMap 𝕜 f :=
  ⟨hf,
    by_cases
      (fun (this : M ≤ 0) =>
        ⟨1, zero_lt_one, fun x =>
          (h x).trans <| mul_le_mul_of_nonneg_right (this.trans zero_le_one) (norm_nonneg x)⟩)
      fun (this : ¬M ≤ 0) => ⟨M, lt_of_not_ge this, h⟩⟩
#align is_linear_map.with_bound IsLinearMap.with_bound

/-- A continuous linear map satisfies `IsBoundedLinearMap` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f1036badeac4e4df6ebf3d8d033ebd0492a9cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
