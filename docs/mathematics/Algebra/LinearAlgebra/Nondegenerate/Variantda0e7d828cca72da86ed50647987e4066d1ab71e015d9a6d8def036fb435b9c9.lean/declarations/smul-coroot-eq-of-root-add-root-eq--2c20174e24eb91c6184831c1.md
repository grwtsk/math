# smul_coroot_eq_of_root_add_root_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65a5a77b-4cf0-f96a-53f5-5dbcb1867567",
  "kind": "lemma",
  "lexical_name": "smul_coroot_eq_of_root_add_root_eq",
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
  "slug": "smul-coroot-eq-of-root-add-root-eq--2c20174e24eb91c6184831c1",
  "source": {
    "blob": "e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c20174e24eb91c6184831c1448140e415705578d1201fc9c733eff3db0d2308",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65a5a77b-4cf0-f96a-53f5-5dbcb1867567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_coroot_eq_of_root_add_root_eq [P.IsAnisotropic] [IsDomain R] [IsTorsionFree R N]
    {i j k : ι} {m n : R} (hk : m • P.root i + n • P.root j = P.root k) :
    letI Q :=
      (m * m) * P.pairing i j + (m * n) * (P.pairing i j * P.pairing j i) + (n * n) * P.pairing j i
    Q • P.coroot k = m • P.pairing i j • P.coroot i + n • P.pairing j i • P.coroot j := by
  let B := P.toInvariantForm
  let lsq (i) : R := B.form (P.root i) (P.root i)
  have hlsq (i : ι) : lsq i = P.RootForm (P.root i) (P.root i) := rfl
  have h₁ : lsq k • P.coroot k = (m • lsq i) • P.coroot i + (n • lsq j) • P.coroot j := by
    simp only [hlsq, smul_assoc, P.rootForm_self_smul_coroot, smul_comm _ 2]
    rw [← map_smul _ m, ← map_smul _ n, ← nsmul_add, ← map_add, hk]
  have h₂ :
      lsq k = (m * m) * lsq i + (m * n) * (2 * B.form (P.root i) (P.root j)) + (n * n) * lsq j := by
    have aux : P.RootForm (P.root j) (P.root i) = B.form (P.root i) (P.root j) :=
      P.rootForm_symmetric.eq (P.root j) (P.root i)
    simp [hlsq, ← hk, aux, B]
    ring
  have h₃ : 2 * B.form (P.root i) (P.root j) = P.pairing i j * lsq j :=
    B.two_mul_apply_root_root i j
  have h₄ : P.pairing j i * lsq i = P.pairing i j * lsq j := B.pairing_mul_eq_pairing_mul_swap i j
  replace h₁ :
      (m * m * (P.pairing j i * lsq i)) • P.coroot k +
      (m * n * (P.pairing j i * P.pairing i j * lsq j)) • P.coroot k +
      (n * n * (P.pairing j i * lsq j)) • P.coroot k =
        (m * (P.pairing j i * lsq i)) • P.coroot i +
        (n * (P.pairing j i * lsq j)) • P.coroot j := by
    rw [h₂, h₃] at h₁
    replace h₁ := congr_arg (fun n ↦ P.pairing j i • n) h₁
    simp only [add_smul, smul_add, ← mul_smul, smul_eq_mul] at h₁
    module_nf at h₁ ⊢
    exact h₁
  simp only [h₄] at h₁
  apply smul_right_injective _ (r := lsq j) (RootPairing.IsAnisotropic.rootForm_root_ne_zero j)
  simp only
  module_nf at h₁ ⊢
  exact h₁

section DomainAlg

variable (S : Type*) [CommRing S] [IsDomain R] [IsDomain S] [Algebra S R] [FaithfulSMul S R]
  [P.IsValuedIn S] [Module S M] [IsScalarTower S R M] [Module S N] [IsScalarTower S R N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantda0e7d828cca72da86ed50647987e4066d1ab71e015d9a6d8def036fb435b9c9.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e684e6d8e8cf9fb4e017f847098a6fe3ef0bfe93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
