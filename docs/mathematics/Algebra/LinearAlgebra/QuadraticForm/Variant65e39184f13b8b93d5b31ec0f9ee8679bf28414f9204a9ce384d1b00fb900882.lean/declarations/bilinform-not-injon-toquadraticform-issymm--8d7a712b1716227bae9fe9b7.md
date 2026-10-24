# BilinForm.not_injOn_toQuadraticForm_isSymm.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab60eb0f-0b72-788b-706d-6509e8fc16f2",
  "kind": "theorem",
  "lexical_name": "BilinForm.not_injOn_toQuadraticForm_isSymm.",
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
  "slug": "bilinform-not-injon-toquadraticform-issymm--8d7a712b1716227bae9fe9b7",
  "source": {
    "blob": "cc4215c28427de8084694963d37122ac783055db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7a712b1716227bae9fe9b7d4c52b6ed5ff323e9b64840907c7e496e65b0e4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab60eb0f-0b72-788b-706d-6509e8fc16f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BilinForm.not_injOn_toQuadraticForm_isSymm.{u} :
    ¬∀ {R M : Type u} [Semiring R] [AddCommMonoid M], ∀ [Module R M],
      Set.InjOn (toQuadraticForm : BilinForm R M → QuadraticForm R M) {B | B.IsSymm} := by
  intro h
  let F := ULift.{u} (ZMod 2)
  apply B_ne_zero F
  apply h (isSymm_B F) isSymm_zero
  rw [BilinForm.toQuadraticForm_zero, BilinForm.toQuadraticForm_eq_zero]
  exact isAlt_B F
#align counterexample.bilin_form.not_inj_on_to_quadratic_form_is_symm Counterexample.BilinForm.not_injOn_toQuadraticForm_isSymm

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variant65e39184f13b8b93d5b31ec0f9ee8679bf28414f9204a9ce384d1b00fb900882.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4215c28427de8084694963d37122ac783055db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
