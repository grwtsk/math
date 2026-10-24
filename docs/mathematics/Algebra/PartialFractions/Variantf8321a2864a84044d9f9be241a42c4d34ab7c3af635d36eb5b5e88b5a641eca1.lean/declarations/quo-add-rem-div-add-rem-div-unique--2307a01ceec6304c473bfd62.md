# quo_add_rem_div_add_rem_div_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179ef3ed-be01-493f-ed9d-bc95d55f0066",
  "kind": "theorem",
  "lexical_name": "quo_add_rem_div_add_rem_div_unique",
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
  "slug": "quo-add-rem-div-add-rem-div-unique--2307a01ceec6304c473bfd62",
  "source": {
    "blob": "a7d428a0106e2389422edfbed7ffe3a903f744e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 500,
    "path": "GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2307a01ceec6304c473bfd62e38210eb021241cf114cb94a1f425d243bbe9655",
  "verification": {
    "reference": "docs/verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179ef3ed-be01-493f-ed9d-bc95d55f0066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quo_add_rem_div_add_rem_div_unique {g₁ g₂ : R[X]} (hg₁ : g₁.Monic)
    (hg₂ : g₂.Monic) (hcoprime : IsCoprime g₁ g₂)
    {q₁ q₂ r₁₁ r₁₂ r₂₁ r₂₂ : R[X]}
    (hr₁₁ : r₁₁.degree < g₁.degree) (hr₁₂ : r₁₂.degree < g₁.degree)
    (hr₂₁ : r₂₁.degree < g₂.degree) (hr₂₂ : r₂₂.degree < g₂.degree)
    (hf : (↑q₁ + ↑r₁₁ / ↑g₁ + ↑r₂₁ / ↑g₂ : K) = ↑q₂ + ↑r₁₂ / ↑g₁ + ↑r₂₂ / ↑g₂) :
    q₁ = q₂ ∧ r₁₁ = r₁₂ ∧ r₂₁ = r₂₂ := by
  let g : Bool → R[X] := Bool.rec g₂ g₁
  let r₁ : Bool → R[X] := Bool.rec r₂₁ r₁₁
  let r₂ : Bool → R[X] := Bool.rec r₂₂ r₁₂
  have hg (i : Bool) (_ : i ∈ Finset.univ) : (g i).Monic := Bool.rec hg₂ hg₁ i
  have hcoprime : Set.Pairwise (Finset.univ : Finset Bool) fun i j => IsCoprime (g i) (g j) := by
    simp [g, Set.pairwise_insert, hcoprime, hcoprime.symm]
  have hr₁ (i : Bool) (_ : i ∈ Finset.univ) : (r₁ i).degree < (g i).degree := Bool.rec hr₂₁ hr₁₁ i
  have hr₂ (i : Bool) (_ : i ∈ Finset.univ) : (r₂ i).degree < (g i).degree := Bool.rec hr₂₂ hr₁₂ i
  refine (quo_add_sum_rem_div_unique K hg hcoprime hr₁ hr₂ ?_).imp_right fun h =>
    ⟨h true (Finset.mem_univ true), h false (Finset.mem_univ false)⟩
  simpa [g, r₁, r₂, add_assoc] using hf

end TwoDenominators

end Field

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PartialFractions/Variantf8321a2864a84044d9f9be241a42c4d34ab7c3af635d36eb5b5e88b5a641eca1.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d428a0106e2389422edfbed7ffe3a903f744e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
