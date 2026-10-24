# transpose_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "734f471149bf7392b5cd68e6a3c010e326ed6663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db35779a419e6801ac1f44cc73730a1cf38172700d83a38876b26232614805b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:912dcf98-1fd4-c633-6a53-cf2c28f860e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e49a512-de3e-0f82-5437-bf90fdf82062",
  "kind": "theorem",
  "lexical_name": "transpose_comp",
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
  "slug": "transpose-comp--a64748687ba40df97c400ccb",
  "source": {
    "blob": "734f471149bf7392b5cd68e6a3c010e326ed6663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantdb35779a419e6801ac1f44cc73730a1cf38172700d83a38876b26232614805b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a64748687ba40df97c400ccb95ae52f3e3cf26c8814c966d8fed2fdcf9df24fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantdb35779a419e6801ac1f44cc73730a1cf38172700d83a38876b26232614805b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e49a512-de3e-0f82-5437-bf90fdf82062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transpose_comp (u : M' →ₗ[R] M'') (v : M →ₗ[R] M') :
    transpose (u.comp v) = (transpose v).comp (transpose u) :=
  rfl

end Dual

end Module

section DualMap

open Module

variable {R M₁ M₂ : Type*} [CommSemiring R]
variable [AddCommMonoid M₁] [Module R M₁] [AddCommMonoid M₂] [Module R M₂]

/-- Given a linear map `f : M₁ →ₗ[R] M₂`, `f.dualMap` is the linear map between the dual of
`M₂` and `M₁` such that it maps the functional `φ` to `φ ∘ f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantdb35779a419e6801ac1f44cc73730a1cf38172700d83a38876b26232614805b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantdb35779a419e6801ac1f44cc73730a1cf38172700d83a38876b26232614805b6.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734f471149bf7392b5cd68e6a3c010e326ed6663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
