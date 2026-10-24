# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77ac8902bf5e2298ded8c042a47443b9be34eb8e5ba0bd359e17ff7f1b99945e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d287bda321af44a182c4c103",
  "source": {
    "blob": "0ca7ae6840e8b50dca55a407ff9a7f194b3d7437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 331,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d287bda321af44a182c4c103763c026c49c4dbf163a357a084d915a3bcd37c35",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77ac8902bf5e2298ded8c042a47443b9be34eb8e5ba0bd359e17ff7f1b99945e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {M : Type*} [Semiring R] [AddCommMonoid M] [Module R M] :
    Module (ArithmeticFunction R) (ArithmeticFunction M) where
  one_smul := one_smul'
  mul_smul := mul_smul'
  smul_add r x y := by
    ext
    simp only [sum_add_distrib, smul_add, smul_apply, add_apply]
  smul_zero r := by
    ext
    simp only [smul_apply, sum_const_zero, smul_zero, zero_apply]
  add_smul r s x := by
    ext
    simp only [add_smul, sum_add_distrib, smul_apply, add_apply]
  zero_smul r := by
    ext
    simp only [smul_apply, sum_const_zero, zero_smul, zero_apply]

section DirichletInverse

section Ring

/- We use `(hf : Invertible (f 1))` instead of `[hf : Invertible (f 1)]` because in practice such
an instance is unlikely to be automatically synthesized due to the presence of `f`. -/
variable [Ring R] (f : ℕ → R) (hf : Invertible (f 1))

/-- Given an inverse of `f 1`, construct the Dirichlet inverse of `f`. We use `Invertible` to make
this definition computable when `f` is computable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Defs/Variant344330a674a9ce69523bab78e4bf79b4da399c11e28ec7d5d00125e26e9fcecb.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca7ae6840e8b50dca55a407ff9a7f194b3d7437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
