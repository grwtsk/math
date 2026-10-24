# finite_zmod_pairing_eq_dft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23e891ea-788d-e327-3d82-d664b2ab4556",
  "kind": "theorem",
  "lexical_name": "finite_zmod_pairing_eq_dft",
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
  "slug": "finite-zmod-pairing-eq-dft--e7144a255f79ce2e887f0405",
  "source": {
    "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 225,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7144a255f79ce2e887f0405ec12e3fda92036b870a73749bb1f3de4f558de9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23e891ea-788d-e327-3d82-d664b2ab4556`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zmod_pairing_eq_dft
    {Q : ℕ} [NeZero Q]
    (f g : ZMod Q → ℂ) :
    (∑ x : ZMod Q, f x * g x) =
      (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ZMod.dft f (-r) * ZMod.dft g r := by
  classical
  have hinv (x : ZMod Q) :
      g x = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q,
          ZMod.stdAddChar (r * x) * ZMod.dft g r := by
    have h := congrFun
      ((ZMod.dft (N := Q) (E := ℂ)).symm_apply_apply g) x
    rw [ZMod.invDFT_apply] at h
    simpa [smul_eq_mul] using h.symm
  have hfreq (r : ZMod Q) :
      (∑ x : ZMod Q,
        f x * ZMod.stdAddChar (r * x)) =
        ZMod.dft f (-r) := by
    rw [ZMod.dft_apply]
    apply Finset.sum_congr rfl
    intro x _hx
    simp only [smul_eq_mul]
    have harg : -(x * -r) = r * x := by ring
    rw [harg]
    ring
  calc
    (∑ x : ZMod Q, f x * g x) =
      ∑ x : ZMod Q,
        f x * ((Q : ℂ)⁻¹ *
          ∑ r : ZMod Q,
            ZMod.stdAddChar (r * x) * ZMod.dft g r) := by
              apply Fintype.sum_congr
              intro x
              rw [hinv]
    _ = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q,
          (∑ x : ZMod Q,
            f x * ZMod.stdAddChar (r * x)) * ZMod.dft g r := by
      simp_rw [mul_sum, sum_mul]
      rw [sum_comm]
      ring
    _ = (Q : ℂ)⁻¹ *
        ∑ r : ZMod Q, ZMod.dft f (-r) * ZMod.dft g r := by
      congr 2
      apply Finset.sum_congr rfl
      intro r _hr
      rw [hfreq]

/-- Iterated two-dimensional DFT of a finite kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
