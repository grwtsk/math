# IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f497cd710587d4e191e5cd8092441a80cf5db620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd6ca35-354f-f7a1-4eb3-d1b7e97b96b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6b53aae-d169-7b13-6ce9-a9121b593b00",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt",
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
  "slug": "islocalextron-exists-multipliers-of-hasstrictfderivat--96728b98e9c260445c5b17db",
  "source": {
    "blob": "f497cd710587d4e191e5cd8092441a80cf5db620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96728b98e9c260445c5b17dbd98cc027cba5f70a6e03de14ea3c44df947f1e84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b53aae-d169-7b13-6ce9-a9121b593b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt {ι : Type*} [Fintype ι]
    {f : ι → E → ℝ} {f' : ι → E →L[ℝ] ℝ} (hextr : IsLocalExtrOn φ {x | ∀ i, f i x = f i x₀} x₀)
    (hf' : ∀ i, HasStrictFDerivAt (f i) (f' i) x₀) (hφ' : HasStrictFDerivAt φ φ' x₀) :
    ∃ (Λ : ι → ℝ) (Λ₀ : ℝ), (Λ, Λ₀) ≠ 0 ∧ (∑ i, Λ i • f' i) + Λ₀ • φ' = 0 := by
  letI := Classical.decEq ι
  replace hextr : IsLocalExtrOn φ {x | (fun i => f i x) = fun i => f i x₀} x₀ := by
    simpa only [funext_iff] using hextr
  rcases hextr.exists_linear_map_of_hasStrictFDerivAt (hasStrictFDerivAt_pi.2 fun i => hf' i)
      hφ' with
    ⟨Λ, Λ₀, h0, hsum⟩
  rcases (LinearEquiv.piRing ℝ ℝ ι ℝ).symm.surjective Λ with ⟨Λ, rfl⟩
  refine ⟨Λ, Λ₀, ?_, ?_⟩
  · simpa only [Ne, Prod.ext_iff, LinearEquiv.map_eq_zero_iff, Prod.fst_zero] using h0
  · ext x; simpa [mul_comm] using hsum x

/-- Lagrange multipliers theorem. Let `f : ι → E → ℝ` be a finite family of functions.
Suppose that `φ : E → ℝ` has a local extremum on the set `{x | ∀ i, f i x = f i x₀}` at `x₀`.
Suppose that all functions `f i` as well as `φ` are strictly differentiable at `x₀`.
Then the derivatives `f' i : E → L[ℝ] ℝ` and `φ' : E →L[ℝ] ℝ` are linearly dependent.

See also `IsLocalExtrOn.exists_multipliers_of_hasStrictFDerivAt` for a version that
that states existence of Lagrange multipliers `Λ` and `Λ₀` instead of using
`¬LinearIndependent ℝ _` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LagrangeMultipliers/Variantc1bd627b4e03ec49e549f77e5832624b0763091ffc53ae2b32e8fa5628dc1968.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f497cd710587d4e191e5cd8092441a80cf5db620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
