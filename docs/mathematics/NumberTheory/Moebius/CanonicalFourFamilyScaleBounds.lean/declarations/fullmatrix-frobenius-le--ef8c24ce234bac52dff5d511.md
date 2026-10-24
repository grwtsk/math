# fullMatrix_frobenius_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86160bb0-631d-6beb-9213-9008978668c6",
  "kind": "theorem",
  "lexical_name": "fullMatrix_frobenius_le",
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
  "slug": "fullmatrix-frobenius-le--ef8c24ce234bac52dff5d511",
  "source": {
    "blob": "9a281dc5c927ca05646a735f813809fbaab389da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef8c24ce234bac52dff5d5114707663d0aaa0fdb935c60552e068865793b3679",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86160bb0-631d-6beb-9213-9008978668c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullMatrix_frobenius_le (X : ℕ) (hX : 1 ≤ X) :
    GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.frobenius
      (canonicalFourFamilyCells X) (centeredGreenWindow X)
      (fun n p => canonicalFourFamilyGreenMatrixEntry X n p.1 p.2) ≤ fullMatrixScaleBudget X := by
  have hlog : 0 ≤ Real.log (2*(X:ℝ)) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ 2*X))
  have hb (p : CanonicalFourFamily × ℕ) (n : ℕ) (hn : n ∈ centeredGreenWindow X) :
      (canonicalFourFamilyGreenMatrixEntry X n p.1 p.2)^2 ≤ (Real.log (2*(X:ℝ)))^2 := by
    have hn' : n ≤ 2*X := (Finset.mem_Ioc.mp hn).2
    have h := (sq_le_sq₀ (abs_nonneg _) hlog).mpr (abs_fullMatrixEntry_le_log hX hn' p.1 p.2)
    simpa only [sq_abs] using h
  unfold GRWTSK.LinearAlgebra.Matrix.FiniteAdjointDescent.frobenius
  calc
    _ ≤ ∑ _p ∈ canonicalFourFamilyCells X, ∑ _n ∈ centeredGreenWindow X,
        (Real.log (2*(X:ℝ)))^2 := Finset.sum_le_sum (fun p _ => Finset.sum_le_sum (fun n hn => hb p n hn))
    _ = fullMatrixScaleBudget X := by
      have hw : (centeredGreenWindow X).card = X := by simp [centeredGreenWindow]; omega
      simp [hw, canonicalFourFamilyCells, Finset.card_product, fullMatrixScaleBudget]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a281dc5c927ca05646a735f813809fbaab389da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
