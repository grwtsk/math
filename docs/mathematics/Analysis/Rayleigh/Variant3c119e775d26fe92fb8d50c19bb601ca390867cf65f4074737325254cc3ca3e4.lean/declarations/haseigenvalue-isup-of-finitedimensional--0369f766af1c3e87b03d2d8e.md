# hasEigenvalue_iSup_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db7b8956d2f7eacd51c4dfda733d76544286957e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05d0b198-0591-4bb6-e99a-b0891872befb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ef00870-a2ea-55ba-1ba7-5cc77b7337c3",
  "kind": "theorem",
  "lexical_name": "hasEigenvalue_iSup_of_finiteDimensional",
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
  "slug": "haseigenvalue-isup-of-finitedimensional--0369f766af1c3e87b03d2d8e",
  "source": {
    "blob": "db7b8956d2f7eacd51c4dfda733d76544286957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 244,
    "path": "GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0369f766af1c3e87b03d2d8e56ab275684946b6b31d035689890d995c6e44114",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ef00870-a2ea-55ba-1ba7-5cc77b7337c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEigenvalue_iSup_of_finiteDimensional (hT : T.IsSymmetric) :
    HasEigenvalue T ↑(⨆ x : { x : E // x ≠ 0 }, IsROrC.re ⟪T x, x⟫ / ‖(x : E)‖ ^ 2) := by
  haveI := FiniteDimensional.proper_isROrC 𝕜 E
  let T' := hT.toSelfAdjoint
  obtain ⟨x, hx⟩ : ∃ x : E, x ≠ 0 := exists_ne 0
  have H₁ : IsCompact (sphere (0 : E) ‖x‖) := isCompact_sphere _ _
  have H₂ : (sphere (0 : E) ‖x‖).Nonempty := ⟨x, by simp⟩
  -- key point: in finite dimension, a continuous function on the sphere has a max
  obtain ⟨x₀, hx₀', hTx₀⟩ :=
    H₁.exists_forall_ge H₂ T'.val.reApplyInnerSelf_continuous.continuousOn
  have hx₀ : ‖x₀‖ = ‖x‖ := by simpa using hx₀'
  have : IsMaxOn T'.val.reApplyInnerSelf (sphere 0 ‖x₀‖) x₀ := by simpa only [← hx₀] using hTx₀
  have hx₀_ne : x₀ ≠ 0 := by
    have : ‖x₀‖ ≠ 0 := by simp only [hx₀, norm_eq_zero, hx, Ne.def, not_false_iff]
    simpa [← norm_eq_zero, Ne.def]
  exact hasEigenvalue_of_hasEigenvector (T'.prop.hasEigenvector_of_isMaxOn hx₀_ne this)
#align linear_map.is_symmetric.has_eigenvalue_supr_of_finite_dimensional LinearMap.IsSymmetric.hasEigenvalue_iSup_of_finiteDimensional

/-- The infimum of the Rayleigh quotient of a symmetric operator `T` on a nontrivial
finite-dimensional vector space is an eigenvalue for that operator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7b8956d2f7eacd51c4dfda733d76544286957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
