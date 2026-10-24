# eigenvectors_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de4180f04893b0a4f45fb821c47dc36e8ac22963",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 757,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fef301f-90ee-4152-52ab-27267f820a32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b52b4e47-9c35-c65a-2c63-1e07bbd1b554",
  "kind": "theorem",
  "lexical_name": "eigenvectors_linearIndependent",
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
  "slug": "eigenvectors-linearindependent--f1a8f3cd1853ec7721aaf0d5",
  "source": {
    "blob": "de4180f04893b0a4f45fb821c47dc36e8ac22963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 764,
    "line": 757,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1a8f3cd1853ec7721aaf0d5cfb38bea7b784e268fa6b99539433185247f7195",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52b4e47-9c35-c65a-2c63-1e07bbd1b554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 757–764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvectors_linearIndependent [IsDomain R] [IsTorsionFree R M]
    (f : End R M) (μs : Set R) (xs : μs → M)
    (h_eigenvec : ∀ μ : μs, f.HasEigenvector μ (xs μ)) : LinearIndependent R xs :=
  f.eigenvectors_linearIndependent' (fun μ : μs ↦ μ) Subtype.coe_injective _ h_eigenvec

set_option backward.isDefEq.respectTransparency.types false in
/-- If `f` maps a subspace `p` into itself, then the generalized eigenspace of the restriction
of `f` to `p` is the part of the generalized eigenspace of `f` that lies in `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean#L757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4180f04893b0a4f45fb821c47dc36e8ac22963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
