# KaehlerDifferential.End_equiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 369,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2bccc69-bf1a-6d4e-d2f2-9a92c9b0c3f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d20190e2-4b3e-7527-3307-bbd1838eebf3",
  "kind": "theorem",
  "lexical_name": "KaehlerDifferential.End_equiv_aux",
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
  "slug": "kaehlerdifferential-end-equiv-aux--833bcc960c56c2eb3e5cc3dd",
  "source": {
    "blob": "3a05652a6c7cd213e3bea2b18708536e3d79a385",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 369,
    "path": "GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:833bcc960c56c2eb3e5cc3ddc065dcf99c07bc1a6d111369995c2434b109fb68",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20190e2-4b3e-7527-3307-bbd1838eebf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem KaehlerDifferential.End_equiv_aux (f : S →ₐ[R] S ⊗ S ⧸ KaehlerDifferential.ideal R S ^ 2) :
    (Ideal.Quotient.mkₐ R (KaehlerDifferential.ideal R S).cotangentIdeal).comp f =
        IsScalarTower.toAlgHom R S _ ↔
      (TensorProduct.lmul' R : S ⊗[R] S →ₐ[R] S).kerSquareLift.comp f = AlgHom.id R S := by
  rw [AlgHom.ext_iff, AlgHom.ext_iff]
  apply forall_congr'
  intro x
  have e₁ : (TensorProduct.lmul' R : S ⊗[R] S →ₐ[R] S).kerSquareLift (f x) =
      KaehlerDifferential.quotientCotangentIdealRingEquiv R S
        (Ideal.Quotient.mk (KaehlerDifferential.ideal R S).cotangentIdeal <| f x) := by
    generalize f x = y; obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective y; rfl
  have e₂ :
    x = KaehlerDifferential.quotientCotangentIdealRingEquiv R S (IsScalarTower.toAlgHom R S _ x) :=
    (mul_one x).symm
  constructor
  · intro e
    exact (e₁.trans (@RingEquiv.congr_arg _ _ _ _ _ _
      (KaehlerDifferential.quotientCotangentIdealRingEquiv R S) _ _ e)).trans e₂.symm
  · intro e; apply (KaehlerDifferential.quotientCotangentIdealRingEquiv R S).injective
    exact e₁.symm.trans (e.trans e₂)
#align kaehler_differential.End_equiv_aux KaehlerDifferential.End_equiv_aux

set_option maxHeartbeats 700000 in
-- Porting note: extra heartbeats are needed to infer the instance
-- Module S { x // x ∈ Ideal.cotangentIdeal (ideal R S) }
set_option synthInstance.maxHeartbeats 200000 in
-- This has type
-- `Derivation R S (Ω[S⁄R]) ≃ₗ[R] Derivation R S (KaehlerDifferential.ideal R S).cotangentIdeal`
-- But lean times-out if this is given explicitly.
/-- Derivations into `Ω[S⁄R]` is equivalent to derivations
into `(KaehlerDifferential.ideal R S).cotangentIdeal`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variantfede7701b775c6420adb195c50023d9d99fc294c32f2e77e1c5deeb8276a8aee.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a05652a6c7cd213e3bea2b18708536e3d79a385` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
