# quotientTensorQuotientEquiv_symm_apply_mk_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72fbb956-b3b9-e7de-46d7-c19e95c61891",
  "kind": "lemma",
  "lexical_name": "quotientTensorQuotientEquiv_symm_apply_mk_tmul",
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
  "slug": "quotienttensorquotientequiv-symm-apply-mk-tmul--80faf1e13bdc547301a5c11d",
  "source": {
    "blob": "12870239cd138485283f4215f779a049479a713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80faf1e13bdc547301a5c11d9aa224c14362b938185d46fd2fb997db6df9ff39",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72fbb956-b3b9-e7de-46d7-c19e95c61891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quotientTensorQuotientEquiv_symm_apply_mk_tmul
    (m : Submodule R M) (n : Submodule R N) (x : M) (y : N) :
    (quotientTensorQuotientEquiv m n).symm (Submodule.Quotient.mk (x ⊗ₜ y)) =
      Submodule.Quotient.mk x ⊗ₜ[R] Submodule.Quotient.mk y := rfl

variable (N) in
/--
Let `M, N` be `R`-modules, `m ≤ M` be an `R`-submodule. Then we have a linear isomorphism between
tensor products of the quotient and the quotient of the tensor product:
`(M ⧸ m) ⊗[R] N ≃ₗ[R] (M ⊗[R] N) ⧸ (m ⊗ N)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant2c3ba0de06a9d7378c1f012fad7a0f0d40d0d2df002ac4379a21ccaee5fccd7e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12870239cd138485283f4215f779a049479a713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
