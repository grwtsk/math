# normSqMatrix_mem_doublyStochastic_of_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b97eaf0-19ac-fabc-ee58-8c6a7cd1933e",
  "kind": "lemma",
  "lexical_name": "normSqMatrix_mem_doublyStochastic_of_unitary",
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
  "slug": "normsqmatrix-mem-doublystochastic-of-unitary--70e212813a83752ea7825817",
  "source": {
    "blob": "c1fd838d78e2be13e742ad247e4c7699f830db66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 68,
    "path": "GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e212813a83752ea78258179eee39d6c755bcdce22601019d5f97687e9b57f2",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b97eaf0-19ac-fabc-ee58-8c6a7cd1933e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normSqMatrix_mem_doublyStochastic_of_unitary
    {W : Matrix n n 𝕜} (hW : W ∈ Matrix.unitaryGroup n 𝕜) :
    normSqMatrix W ∈ doublyStochastic ℝ n := by
  rw [mem_doublyStochastic_iff_sum]
  refine ⟨fun i j => sq_nonneg _, fun i => ?_, fun j => ?_⟩
  · -- row sum: `∑ⱼ ‖Wᵢⱼ‖² = re (W Wᴴ)ᵢᵢ = re 1 = 1`
    have h : (W * star W) i i = 1 := by rw [Unitary.mul_star_self_of_mem hW]; simp
    have h2 : RCLike.re ((W * star W) i i) = (1 : ℝ) := by rw [h]; simp
    simpa [normSqMatrix, Matrix.mul_apply, star_apply, RCLike.star_def,
      RCLike.mul_conj, map_sum] using h2
  · -- column sum: `∑ᵢ ‖Wᵢⱼ‖² = re (Wᴴ W)ⱼⱼ = re 1 = 1`
    have h : (star W * W) j j = 1 := by rw [Unitary.star_mul_self_of_mem hW]; simp
    have h2 : RCLike.re ((star W * W) j j) = (1 : ℝ) := by rw [h]; simp
    simpa [normSqMatrix, Matrix.mul_apply, star_apply, RCLike.star_def,
      RCLike.conj_mul, map_sum] using h2

/-- For Hermitian `A, B`, writing `W = Uₐᴴ Uᵦ` for the eigenvector unitaries,
`Re tr(AB) = ∑ₖₗ λₖ(A) · ‖Wₖₗ‖² · λₗ(B)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fd838d78e2be13e742ad247e4c7699f830db66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
