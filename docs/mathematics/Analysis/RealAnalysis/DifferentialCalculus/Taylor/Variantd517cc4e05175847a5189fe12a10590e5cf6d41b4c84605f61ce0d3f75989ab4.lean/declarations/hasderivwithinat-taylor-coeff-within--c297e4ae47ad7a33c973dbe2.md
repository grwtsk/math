# hasDerivWithinAt_taylor_coeff_within

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f8c3c355b39076694695564d2a3b93546862e71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ee03899-b8ef-0d68-e6f7-ed5a1764ddcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf6ce78b-61e7-bf12-e844-5b705601045b",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_taylor_coeff_within",
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
  "slug": "hasderivwithinat-taylor-coeff-within--c297e4ae47ad7a33c973dbe2",
  "source": {
    "blob": "7f8c3c355b39076694695564d2a3b93546862e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c297e4ae47ad7a33c973dbe27d61c159802377dae431cccbd56abd0ed9ab5aaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf6ce78b-61e7-bf12-e844-5b705601045b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_taylor_coeff_within {f : ℝ → E} {x y : ℝ} {k : ℕ} {s t : Set ℝ}
    (ht : UniqueDiffWithinAt ℝ t y) (hs : s ∈ 𝓝[t] y)
    (hf : DifferentiableWithinAt ℝ (iteratedDerivWithin (k + 1) f s) s y) :
    HasDerivWithinAt
      (fun z => (((k + 1 : ℝ) * k !)⁻¹ * (x - z) ^ (k + 1)) • iteratedDerivWithin (k + 1) f s z)
      ((((k + 1 : ℝ) * k !)⁻¹ * (x - y) ^ (k + 1)) • iteratedDerivWithin (k + 2) f s y -
        ((k ! : ℝ)⁻¹ * (x - y) ^ k) • iteratedDerivWithin (k + 1) f s y) t y := by
  replace hf :
    HasDerivWithinAt (iteratedDerivWithin (k + 1) f s) (iteratedDerivWithin (k + 2) f s y) t y := by
    convert (hf.mono_of_mem_nhdsWithin hs).hasDerivWithinAt using 1
    rw [iteratedDerivWithin_succ]
    exact (derivWithin_of_mem_nhdsWithin hs ht hf).symm
  have : HasDerivWithinAt (fun t => ((k + 1 : ℝ) * k !)⁻¹ * (x - t) ^ (k + 1))
      (-((k ! : ℝ)⁻¹ * (x - y) ^ k)) t y := by
    -- Commuting the factors:
    have : -((k ! : ℝ)⁻¹ * (x - y) ^ k) = ((k + 1 : ℝ) * k !)⁻¹ * (-(k + 1) * (x - y) ^ k) := by
      field_simp; ring
    rw [this]
    exact (monomial_has_deriv_aux y x _).hasDerivWithinAt.const_mul _
  convert this.smul hf using 1
  field_simp
  rw [neg_div, neg_smul, sub_eq_add_neg]

/-- Calculate the derivative of the Taylor polynomial with respect to `x₀`.

Version for arbitrary sets -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f8c3c355b39076694695564d2a3b93546862e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
