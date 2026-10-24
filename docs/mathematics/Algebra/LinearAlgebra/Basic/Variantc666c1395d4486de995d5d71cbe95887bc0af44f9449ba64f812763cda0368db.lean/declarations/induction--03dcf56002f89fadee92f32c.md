# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a9a8876-ca1b-ba10-4422-d4227d6b9732",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--03dcf56002f89fadee92f32c",
  "source": {
    "blob": "8c2a188dd417fc45c8c07307e43fb745ba829a65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03dcf56002f89fadee92f32c4210a48a0db4129183ba01767ed173f21ce4bd15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9a8876-ca1b-ba10-4422-d4227d6b9732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction {C : TensorAlgebra R M → Prop}
    (algebraMap : ∀ r, C (algebraMap R (TensorAlgebra R M) r)) (ι : ∀ x, C (ι R x))
    (mul : ∀ a b, C a → C b → C (a * b)) (add : ∀ a b, C a → C b → C (a + b))
    (a : TensorAlgebra R M) : C a := by
  -- the arguments are enough to construct a subalgebra, and a mapping into it from M
  let s : Subalgebra R (TensorAlgebra R M) :=
    { carrier := C
      mul_mem' := @mul
      add_mem' := @add
      algebraMap_mem' := algebraMap }
  let of : M →ₗ[R] s := (TensorAlgebra.ι R).codRestrict (Subalgebra.toSubmodule s) ι
  -- the mapping through the subalgebra is the identity
  have of_id : AlgHom.id R (TensorAlgebra R M) = s.val.comp (lift R of) := by
    ext
    simp only [AlgHom.toLinearMap_id, LinearMap.id_comp, AlgHom.comp_toLinearMap,
      LinearMap.coe_comp, Function.comp_apply, AlgHom.toLinearMap_apply, lift_ι_apply,
      Subalgebra.coe_val]
    erw [LinearMap.codRestrict_apply]
  -- finding a proof is finding an element of the subalgebra
  rw [← AlgHom.id_apply (R := R) a, of_id]
  exact Subtype.prop (lift R of a)

/-- The left-inverse of `algebraMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c2a188dd417fc45c8c07307e43fb745ba829a65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
