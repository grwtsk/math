# orthogonalComplement_iSup_eigenspaces_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9816325b-e61d-7a94-2c2f-b4b82d6f79c7",
  "kind": "theorem",
  "lexical_name": "orthogonalComplement_iSup_eigenspaces_eq_bot",
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
  "slug": "orthogonalcomplement-isup-eigenspaces-eq-bot--86a6070e0e9a65616a1ba363",
  "source": {
    "blob": "5d0619128c3d660acee3b829519fbf12d8e1a748",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 451,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86a6070e0e9a65616a1ba36330e297502e581ec14be31d85689cc42bf314d3a1",
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

Occurrence: `result:9816325b-e61d-7a94-2c2f-b4b82d6f79c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalComplement_iSup_eigenspaces_eq_bot
    (hT : IsCompactOperator T) (hT' : T.IsSymmetric) :
    (⨆ μ, eigenspace (T : Module.End 𝕜 E) μ)ᗮ = ⊥ := by
  let S : (⨆ μ, eigenspace T μ : Submodule 𝕜 E)ᗮ →L[𝕜] (⨆ μ, eigenspace T μ : Submodule 𝕜 E)ᗮ :=
    T.restrict hT'.orthogonalComplement_iSup_eigenspaces_invariant
  have hS_compact : IsCompactOperator S :=
    hT.restrict' hT'.orthogonalComplement_iSup_eigenspaces_invariant
  have hS_symm : S.IsSymmetric :=
    hT'.restrict_invariant (hT'.orthogonalComplement_iSup_eigenspaces_invariant)
  have hS μ : eigenspace (S : Module.End 𝕜 (⨆ μ, eigenspace T μ : Submodule 𝕜 E)ᗮ) μ = ⊥ :=
    hT'.orthogonalComplement_iSup_eigenspaces _
  have h μ : HasEigenvalue (S : End 𝕜 (⨆ μ, eigenspace T μ : Submodule 𝕜 E)ᗮ) μ → μ = 0 := by
    simp_all [hasEigenvalue_iff]
  rw [eq_zero_of_forall_hasEigenvalue_eq_zero hS_compact hS_symm] at h
  rw [← Submodule.subsingleton_iff_eq_bot]
  by_contra! hV
  simpa [h] using hS 0

/-- The **Spectral Theorem** for compact self-adjoint operators: the eigenspaces of a compact
self-adjoint operator are finite-dimensional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variantefb70a6dafd6d73ff603d3aaedde6d15fb6cbd54859ecbfa07d705999f999947.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0619128c3d660acee3b829519fbf12d8e1a748` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
