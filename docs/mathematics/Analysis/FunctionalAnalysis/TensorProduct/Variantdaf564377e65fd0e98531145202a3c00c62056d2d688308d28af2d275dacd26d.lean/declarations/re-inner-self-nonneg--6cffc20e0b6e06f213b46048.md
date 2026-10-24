# re_inner_self_nonneg

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
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b851542-28d4-c6c8-44b8-e34c11c08bbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8277c5c6-73a4-dc8d-7951-bcac16920a82",
  "kind": "theorem",
  "lexical_name": "re_inner_self_nonneg",
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
  "slug": "re-inner-self-nonneg--6cffc20e0b6e06f213b46048",
  "source": {
    "blob": "e1cf1facaedf07c331e922606dfcf3046ed7f343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cffc20e0b6e06f213b4604858ffb1f1bb98a4d93f35ff043f361b68ec552858",
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

Occurrence: `result:8277c5c6-73a4-dc8d-7951-bcac16920a82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private protected theorem re_inner_self_nonneg (x : E ⊗[𝕜] F) :
    0 ≤ RCLike.re (inner 𝕜 x x) := by
  /-
  Similarly to the above proof, for `x : E ⊗ F`, there exists finite submodules `E', F'` such that
  `x ∈ mapIncl E' F'`.
  And so the rest then follows from the above lemmas `inner_mapIncl_mapIncl` and `inner_self`.
  -/
  obtain ⟨E', F', iE', iF', hz⟩ := exists_finite_submodule_of_setFinite {x} (Set.finite_singleton x)
  obtain ⟨y, rfl⟩ := Set.singleton_subset_iff.mp hz
  obtain e := stdOrthonormalBasis 𝕜 E'
  obtain f := stdOrthonormalBasis 𝕜 F'
  rw [inner_mapIncl_mapIncl, inner_self y e f, RCLike.ofReal_re]
  exact Finset.sum_nonneg fun _ _ ↦ sq_nonneg _

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variantdaf564377e65fd0e98531145202a3c00c62056d2d688308d28af2d275dacd26d.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1cf1facaedf07c331e922606dfcf3046ed7f343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
