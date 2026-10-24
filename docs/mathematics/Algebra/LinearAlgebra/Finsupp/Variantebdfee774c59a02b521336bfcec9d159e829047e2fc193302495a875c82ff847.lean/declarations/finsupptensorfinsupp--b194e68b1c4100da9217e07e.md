# finsuppTensorFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3bfd8a519d57ff6e09c55b4e5579f86d66fddb46867705018c51ce7fb6515e9",
  "kind": "def",
  "lexical_name": "finsuppTensorFinsupp",
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
  "slug": "finsupptensorfinsupp--b194e68b1c4100da9217e07e",
  "source": {
    "blob": "33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b194e68b1c4100da9217e07e3e61a79eace09282cbee9707038212e72d3d01f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3bfd8a519d57ff6e09c55b4e5579f86d66fddb46867705018c51ce7fb6515e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finsuppTensorFinsupp : (ι →₀ M) ⊗[R] (κ →₀ N) ≃ₗ[S] ι × κ →₀ M ⊗[R] N :=
  TensorProduct.AlgebraTensorModule.congr
    (finsuppLEquivDirectSum S M ι) (finsuppLEquivDirectSum R N κ) ≪≫ₗ
    ((TensorProduct.directSum R S (fun _ : ι => M) fun _ : κ => N) ≪≫ₗ
      (finsuppLEquivDirectSum S (M ⊗[R] N) (ι × κ)).symm)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
