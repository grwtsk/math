# Algebra.trace_eq_of_equiv_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70c95ade-2b04-bfc2-33f9-767305a123ce",
  "kind": "lemma",
  "lexical_name": "Algebra.trace_eq_of_equiv_equiv",
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
  "slug": "algebra-trace-eq-of-equiv-equiv--193406ac18d71a172cccfecd",
  "source": {
    "blob": "01097c8fe6fc42f93d70fa0be5fa76cda768b701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 208,
    "path": "GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193406ac18d71a172cccfecd52d904db4738de5530178a66a35620130d4d7b13",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70c95ade-2b04-bfc2-33f9-767305a123ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.trace_eq_of_equiv_equiv {A₁ B₁ A₂ B₂ : Type*} [CommRing A₁] [CommRing B₁]
    [CommRing A₂] [CommRing B₂] [Algebra A₁ B₁] [Algebra A₂ B₂] (e₁ : A₁ ≃+* A₂) (e₂ : B₁ ≃+* B₂)
    (he : RingHom.comp (algebraMap A₂ B₂) ↑e₁ = RingHom.comp ↑e₂ (algebraMap A₁ B₁)) (x) :
    Algebra.trace A₁ B₁ x = e₁.symm (Algebra.trace A₂ B₂ (e₂ x)) := by
  let := (RingHom.comp (e₂ : B₁ →+* B₂) (algebraMap A₁ B₁)).toAlgebra
  let e' : B₁ ≃ₐ[A₁] B₂ := { e₂ with commutes' := fun _ ↦ rfl }
  rw [← Algebra.trace_eq_of_ringEquiv e₁ he, ← Algebra.trace_eq_of_algEquiv e',
    RingEquiv.symm_apply_apply]
  rfl

section EqSumEmbeddings

variable [Algebra K F] [IsScalarTower K L F]

open Algebra IntermediateField

variable (F) (E : Type*) [Field E] [Algebra K E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01097c8fe6fc42f93d70fa0be5fa76cda768b701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
