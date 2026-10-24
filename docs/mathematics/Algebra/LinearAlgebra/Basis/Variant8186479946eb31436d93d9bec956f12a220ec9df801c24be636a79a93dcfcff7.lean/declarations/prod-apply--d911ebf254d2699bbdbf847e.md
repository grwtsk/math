# prod_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ea90b93-2af1-6e14-dc43-cdcc16ffc612",
  "kind": "theorem",
  "lexical_name": "prod_apply",
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
  "slug": "prod-apply--d911ebf254d2699bbdbf847e",
  "source": {
    "blob": "52986b23539c4035e2d24a4a59b71025d9709943",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 782,
    "line": 771,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant8186479946eb31436d93d9bec956f12a220ec9df801c24be636a79a93dcfcff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d911ebf254d2699bbdbf847e5b7634ad4ffd4fb6d1c4f8e2b6117046d1c84363",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant8186479946eb31436d93d9bec956f12a220ec9df801c24be636a79a93dcfcff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ea90b93-2af1-6e14-dc43-cdcc16ffc612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–782.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_apply (i) :
    b.prod b' i = Sum.elim (LinearMap.inl R M M' ∘ b) (LinearMap.inr R M M' ∘ b') i := by
  ext <;> cases i <;>
    simp only [prod_apply_inl_fst, Sum.elim_inl, LinearMap.inl_apply, prod_apply_inr_fst,
      Sum.elim_inr, LinearMap.inr_apply, prod_apply_inl_snd, prod_apply_inr_snd, Function.comp]
#align basis.prod_apply Basis.prod_apply

end Prod

section NoZeroSMulDivisors

-- Can't be an instance because the basis can't be inferred.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant8186479946eb31436d93d9bec956f12a220ec9df801c24be636a79a93dcfcff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant8186479946eb31436d93d9bec956f12a220ec9df801c24be636a79a93dcfcff7.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52986b23539c4035e2d24a4a59b71025d9709943` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
