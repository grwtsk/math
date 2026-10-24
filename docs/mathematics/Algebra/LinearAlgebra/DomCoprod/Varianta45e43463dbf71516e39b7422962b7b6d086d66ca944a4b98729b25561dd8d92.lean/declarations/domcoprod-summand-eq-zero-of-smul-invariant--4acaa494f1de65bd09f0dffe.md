# domCoprod.summand_eq_zero_of_smul_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4cf6304-0a81-b275-8f92-0510ff8f67e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cf12aec-0e1f-e8bb-ff16-99f584a00259",
  "kind": "theorem",
  "lexical_name": "domCoprod.summand_eq_zero_of_smul_invariant",
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
  "slug": "domcoprod-summand-eq-zero-of-smul-invariant--4acaa494f1de65bd09f0dffe",
  "source": {
    "blob": "51e99615c0ab649f0cfe6745d4daf1327efceef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acaa494f1de65bd09f0dffe9d794902f37f055c7aaed7f8d4136b704355c720",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf12aec-0e1f-e8bb-ff16-99f584a00259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domCoprod.summand_eq_zero_of_smul_invariant (a : Mᵢ [⋀^ιa]→ₗ[R'] N₁)
    (b : Mᵢ [⋀^ιb]→ₗ[R'] N₂) (σ : Perm.ModSumCongr ιa ιb) {v : ιa ⊕ ιb → Mᵢ}
    {i j : ιa ⊕ ιb} (hv : v i = v j) (hij : i ≠ j) :
    swap i j • σ = σ → domCoprod.summand a b σ v = 0 := by
  refine Quotient.inductionOn' σ fun σ => ?_
  dsimp only [Quotient.liftOn'_mk'', Quotient.map'_mk'', MultilinearMap.smul_apply,
    MultilinearMap.domDomCongr_apply, MultilinearMap.domCoprod_apply, domCoprod.summand]
  intro hσ
  obtain ⟨⟨sl, sr⟩, hσ⟩ := QuotientGroup.leftRel_apply.mp (Quotient.exact' hσ)
  rcases hi : σ⁻¹ i with i' | i' <;> rcases hj : σ⁻¹ j with j' | j' <;>
    rw [Perm.inv_eq_iff_eq] at hi hj <;> substs hi hj
  -- the term pairs with and cancels another term
  case inl.inr => simpa using Equiv.congr_fun hσ (Sum.inl i')
  case inr.inl => simpa using Equiv.congr_fun hσ (Sum.inr i')
  -- the term does not pair but is zero
  case inl.inl =>
    suffices (a fun i ↦ v (σ (Sum.inl i))) = 0 by simp_all
    exact AlternatingMap.map_eq_zero_of_eq _ _ hv fun hij' => hij (hij' ▸ rfl)
  case inr.inr =>
    suffices (b fun i ↦ v (σ (Sum.inr i))) = 0 by simp_all
    exact b.map_eq_zero_of_eq _ hv fun hij' => hij (hij' ▸ rfl)

/-- Like `MultilinearMap.domCoprod`, but ensures the result is also alternating.

Note that this is usually defined (for instance, as used in Proposition 22.24 in [Gallier2011Notes])
over integer indices `ιa = Fin n` and `ιb = Fin m`, as
$$
(f \wedge g)(u_1, \ldots, u_{m+n}) =
  \sum_{\operatorname{shuffle}(m, n)} \operatorname{sign}(\sigma)
    f(u_{\sigma(1)}, \ldots, u_{\sigma(m)}) g(u_{\sigma(m+1)}, \ldots, u_{\sigma(m+n)}),
$$
where $\operatorname{shuffle}(m, n)$ consists of all permutations of $[1, m+n]$ such that
$\sigma(1) < \cdots < \sigma(m)$ and $\sigma(m+1) < \cdots < \sigma(m+n)$.

Here, we generalize this by replacing:
* the product in the sum with a tensor product
* the filtering of $[1, m+n]$ to shuffles with an isomorphic quotient
* the additions in the subscripts of $\sigma$ with an index of type `Sum`

The specialized version can be obtained by combining this definition with `finSumFinEquiv` and
`LinearMap.mul'`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DomCoprod/Varianta45e43463dbf71516e39b7422962b7b6d086d66ca944a4b98729b25561dd8d92.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e99615c0ab649f0cfe6745d4daf1327efceef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
