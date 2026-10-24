# lsum_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8172f385-c295-46c9-8834-d5eefd805c8b",
  "kind": "theorem",
  "lexical_name": "lsum_symm_apply",
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
  "slug": "lsum-symm-apply--0db3e27fdf1344863da747af",
  "source": {
    "blob": "7f4fa64bfc182ac63deb8c434a3d9a268108052e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 390,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db3e27fdf1344863da747af3cdde7e88a2e684ec7d5a1c8a2bc011208658e6b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8172f385-c295-46c9-8834-d5eefd805c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsum_symm_apply (f : (α →₀ M) →ₗ[R] N) (x : α) : (lsum S).symm f x = f.comp (lsingle x) :=
  rfl
#align finsupp.lsum_symm_apply Finsupp.lsum_symm_apply

end LSum

section

variable (M) (R) (X : Type*) (S)
variable [Module S M] [SMulCommClass R S M]

/-- A slight rearrangement from `lsum` gives us
the bijection underlying the free-forgetful adjunction for R-modules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantc6c04e46914b36b807f31599e052407efaed3234241ce7039c8e933218d399a1.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4fa64bfc182ac63deb8c434a3d9a268108052e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
