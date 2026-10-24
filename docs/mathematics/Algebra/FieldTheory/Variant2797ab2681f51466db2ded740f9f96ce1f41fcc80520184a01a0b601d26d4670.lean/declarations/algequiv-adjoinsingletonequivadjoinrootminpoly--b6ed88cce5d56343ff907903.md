# AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:125b21f098c440777fc6f82b39643d3595670e46a098e32c86d9a78c6f63a4fa",
  "kind": "def",
  "lexical_name": "AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly",
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
  "slug": "algequiv-adjoinsingletonequivadjoinrootminpoly--b6ed88cce5d56343ff907903",
  "source": {
    "blob": "207a1c4fa98923a86922bebb686e85694eb26c29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 41,
    "path": "GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ed88cce5d56343ff90790335a59ea476b5e4ecafbea2138ada7df2eb5b8aba",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:125b21f098c440777fc6f82b39643d3595670e46a098e32c86d9a78c6f63a4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly {R : Type*} [CommRing R] [Algebra F R] (x : R) :
    Algebra.adjoin F ({x} : Set R) ≃ₐ[F] AdjoinRoot (minpoly F x) :=
  AlgEquiv.symm <| AlgEquiv.ofBijective (Minpoly.toAdjoin F x) <| by
    refine ⟨(injective_iff_map_eq_zero _).2 fun P₁ hP₁ ↦ ?_, Minpoly.toAdjoin.surjective F x⟩
    obtain ⟨P, rfl⟩ := mk_surjective P₁
    refine AdjoinRoot.mk_eq_zero.mpr (minpoly.dvd F x ?_)
    rwa [Minpoly.toAdjoin_apply', liftHom_mk, ← Subalgebra.coe_eq_zero, aeval_subalgebra_coe] at hP₁

/-- Produce an algebra homomorphism `Adjoin R {x} →ₐ[R] T` sending `x` to
a root of `x`'s minimal polynomial in `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant2797ab2681f51466db2ded740f9f96ce1f41fcc80520184a01a0b601d26d4670.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `207a1c4fa98923a86922bebb686e85694eb26c29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
