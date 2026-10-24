# exists_smul_mem_fd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf03284-2c27-2b3c-a6dd-5b0b8b2cb2d7",
  "kind": "theorem",
  "lexical_name": "exists_smul_mem_fd",
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
  "slug": "exists-smul-mem-fd--3a544e80892c453b0d672bc7",
  "source": {
    "blob": "be9a75cc088185b7bfaba3fdc237ec3c32cf3469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 451,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a544e80892c453b0d672bc7b0a9fa6d00623e1928758ce74a11ec81ee250f30",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf03284-2c27-2b3c-a6dd-5b0b8b2cb2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smul_mem_fd (z : ℍ) : ∃ g : SL(2, ℤ), g • z ∈ 𝒟 := by
  -- obtain a g₀ which maximizes im (g • z),
  obtain ⟨g₀, hg₀⟩ := exists_max_im z
  -- then among those, minimize re
  obtain ⟨g, hg, hg'⟩ := exists_row_one_eq_and_min_re z (bottom_row_coprime g₀)
  refine' ⟨g, _⟩
  -- `g` has same max im property as `g₀`
  have hg₀' : ∀ g' : SL(2, ℤ), (g' • z).im ≤ (g • z).im := by
    have hg'' : (g • z).im = (g₀ • z).im := by
      rw [SpecialLinearGroup.im_smul_eq_div_normSq, SpecialLinearGroup.im_smul_eq_div_normSq,
        denom_apply, denom_apply, hg]
    simpa only [hg''] using hg₀
  constructor
  · -- Claim: `1 ≤ ⇑norm_sq ↑(g • z)`. If not, then `S•g•z` has larger imaginary part
    contrapose! hg₀'
    refine' ⟨S * g, _⟩
    rw [mul_smul]
    exact im_lt_im_S_smul hg₀'
  · show |(g • z).re| ≤ 1 / 2
    -- if not, then either `T` or `T'` decrease |Re|.
    rw [abs_le]
    constructor
    · contrapose! hg'
      refine' ⟨T * g, (T_mul_apply_one _).symm, _⟩
      rw [mul_smul, re_T_smul]
      cases abs_cases ((g • z).re + 1) <;> cases abs_cases (g • z).re <;> linarith
    · contrapose! hg'
      refine' ⟨T⁻¹ * g, (T_inv_mul_apply_one _).symm, _⟩
      rw [mul_smul, re_T_inv_smul]
      cases abs_cases ((g • z).re - 1) <;> cases abs_cases (g • z).re <;> linarith
#align modular_group.exists_smul_mem_fd ModularGroup.exists_smul_mem_fd

section UniqueRepresentative

/-- An auxiliary result en route to `ModularGroup.c_eq_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9a75cc088185b7bfaba3fdc237ec3c32cf3469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
