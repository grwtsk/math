# diagonalization_apply_self_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:698598a5-ccb7-33dc-0786-cf7be46adcc2",
  "kind": "theorem",
  "lexical_name": "diagonalization_apply_self_apply",
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
  "slug": "diagonalization-apply-self-apply--c476d8f3c683bacd9a33938b",
  "source": {
    "blob": "5d0619128c3d660acee3b829519fbf12d8e1a748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 200,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c476d8f3c683bacd9a33938bae18516619fd76ffa8175e5e6ec214f1f11835fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:698598a5-ccb7-33dc-0786-cf7be46adcc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalization_apply_self_apply (hT : T.IsSymmetric) (v : E) (μ : Eigenvalues T) :
    hT.diagonalization (T v) μ = (μ : 𝕜) • hT.diagonalization v μ := by
  suffices
    ∀ w : PiLp 2 fun μ : Eigenvalues T => eigenspace T μ,
      T (hT.diagonalization.symm w) = hT.diagonalization.symm (toLp 2 fun μ => (μ : 𝕜) • w μ) by
    simpa only [LinearIsometryEquiv.symm_apply_apply, LinearIsometryEquiv.apply_symm_apply] using
      congr_arg (fun w => hT.diagonalization w μ) (this (hT.diagonalization v))
  intro w
  have hwT : ∀ μ, T (w μ) = (μ : 𝕜) • w μ := fun μ => mem_eigenspace_iff.1 (w μ).2
  simp only [diagonalization_symm_apply, map_sum, hwT, SetLike.val_smul]

end Version1

section Version2

variable {n : ℕ}

set_option backward.privateInPublic true in
/-- Unsorted eigenvalues and eigenvectors.  These private definitions should not be used directly.
Instead use the functions eigenvalues and eigenvectorBasis defined below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0619128c3d660acee3b829519fbf12d8e1a748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
