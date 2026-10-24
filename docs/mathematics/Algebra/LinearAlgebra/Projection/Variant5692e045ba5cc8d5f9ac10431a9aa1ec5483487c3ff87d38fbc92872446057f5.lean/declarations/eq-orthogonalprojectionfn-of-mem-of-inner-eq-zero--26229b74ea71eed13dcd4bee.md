# eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 445,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df530356-72f8-ccea-ada5-48c4593902cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c1dcc16-1bd3-b2c3-e866-d00aa37dca37",
  "kind": "theorem",
  "lexical_name": "eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero",
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
  "slug": "eq-orthogonalprojectionfn-of-mem-of-inner-eq-zero--26229b74ea71eed13dcd4bee",
  "source": {
    "blob": "4f238cdc4e181872e282540e2a1fb89ed3e553da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 445,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26229b74ea71eed13dcd4bee226ac2a58782c31e129dd312702a1f7a369c1bac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c1dcc16-1bd3-b2c3-e866-d00aa37dca37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero {u v : E} (hvm : v ∈ K)
    (hvo : ∀ w ∈ K, ⟪u - v, w⟫ = 0) : orthogonalProjectionFn K u = v := by
  rw [← sub_eq_zero, ← @inner_self_eq_zero 𝕜]
  have hvs : orthogonalProjectionFn K u - v ∈ K :=
    Submodule.sub_mem K (orthogonalProjectionFn_mem u) hvm
  have huo : ⟪u - orthogonalProjectionFn K u, orthogonalProjectionFn K u - v⟫ = 0 :=
    orthogonalProjectionFn_inner_eq_zero u _ hvs
  have huv : ⟪u - v, orthogonalProjectionFn K u - v⟫ = 0 := hvo _ hvs
  have houv : ⟪u - v - (u - orthogonalProjectionFn K u), orthogonalProjectionFn K u - v⟫ = 0 := by
    rw [inner_sub_left, huo, huv, sub_zero]
  rwa [sub_sub_sub_cancel_left] at houv
#align eq_orthogonal_projection_fn_of_mem_of_inner_eq_zero eq_orthogonalProjectionFn_of_mem_of_inner_eq_zero

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variant5692e045ba5cc8d5f9ac10431a9aa1ec5483487c3ff87d38fbc92872446057f5.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f238cdc4e181872e282540e2a1fb89ed3e553da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
