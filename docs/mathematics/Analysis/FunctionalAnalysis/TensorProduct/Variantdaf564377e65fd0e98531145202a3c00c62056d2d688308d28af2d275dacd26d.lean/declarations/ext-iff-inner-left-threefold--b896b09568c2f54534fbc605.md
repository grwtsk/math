# ext_iff_inner_left_threefold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1cf1facaedf07c331e922606dfcf3046ed7f343",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5599823a-f790-ffe6-f80b-2a3af18e76ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf1e67ae-a450-0f82-57e7-3f834c5d0f00",
  "kind": "theorem",
  "lexical_name": "ext_iff_inner_left_threefold",
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
  "slug": "ext-iff-inner-left-threefold--b896b09568c2f54534fbc605",
  "source": {
    "blob": "e1cf1facaedf07c331e922606dfcf3046ed7f343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b896b09568c2f54534fbc6058945dd33b639af9c42a8a01d13b375197ccb4156",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf1e67ae-a450-0f82-57e7-3f834c5d0f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_iff_inner_left_threefold {x y : E ⊗[𝕜] F ⊗[𝕜] G} :
    x = y ↔ ∀ a b c, inner 𝕜 (a ⊗ₜ b ⊗ₜ c) x = inner 𝕜 (a ⊗ₜ b ⊗ₜ c) y := by
  simpa only [← inner_conj_symm x, ← inner_conj_symm y, starRingEnd_apply, star_inj] using
    ext_iff_inner_right_threefold (x := x) (y := y)

variable (𝕜 E F) in
/-- The canonical continuous bilinear map `E → F → E ⊗ F`. This is the continuous version of
`mk`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1cf1facaedf07c331e922606dfcf3046ed7f343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
