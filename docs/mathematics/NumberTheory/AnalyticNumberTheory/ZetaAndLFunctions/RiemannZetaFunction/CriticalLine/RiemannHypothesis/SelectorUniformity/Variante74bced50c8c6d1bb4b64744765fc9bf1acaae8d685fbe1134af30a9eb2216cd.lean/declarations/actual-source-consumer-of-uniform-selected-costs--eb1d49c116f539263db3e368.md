# actual_source_consumer_of_uniform_selected_costs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24f1aa9c-849c-025c-1f4e-ee516a120c7c",
  "kind": "theorem",
  "lexical_name": "actual_source_consumer_of_uniform_selected_costs",
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
  "slug": "actual-source-consumer-of-uniform-selected-costs--eb1d49c116f539263db3e368",
  "source": {
    "blob": "83b21a7c4723123d28ef44fa89d0a91e65d5cb7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 50,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectorUniformity/Variante74bced50c8c6d1bb4b64744765fc9bf1acaae8d685fbe1134af30a9eb2216cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1d49c116f539263db3e3687ff81d8b92411d114f7306f98d04b0d6b7c89796",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectorUniformity/Variante74bced50c8c6d1bb4b64744765fc9bf1acaae8d685fbe1134af30a9eb2216cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24f1aa9c-849c-025c-1f4e-ee516a120c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_consumer_of_uniform_selected_costs {Theta : Type*}
    (select : ℝ → Theta) (estimate cost : Theta → ℝ → ℝ)
    (hdecode : ∀ A : ℝ, 1 ≤ A →
      closedPrimeMoment A = estimate (select A) A + cost (select A) A)
    {m n : ℕ} {D E R : ℝ} (hD : 0 ≤ D) (hE : 0 ≤ E) (hR : 1 ≤ R)
    (hestimate : ∀ theta : Theta, ∀ A : ℝ, R ≤ A → estimate theta A ≤ D * A ^ m)
    (hcost : ∀ theta : Theta, ∀ A : ℝ, R ≤ A → cost theta A ≤ E * A ^ n) :
    OpenArithmeticSuppliers.ProblemP := by
  have hp : EventuallyPolynomialUpper (fun A ↦ estimate (select A) A) :=
    ⟨m, D, R, hD, hR, fun A hA ↦ hestimate (select A) A hA⟩
  have hc : EventuallyPolynomialUpper (fun A ↦ cost (select A) A) :=
    ⟨n, E, R, hE, hR, fun A hA ↦ hcost (select A) A hA⟩
  have h := polynomial_upper_add hp hc
  obtain ⟨k, C, T, hC, hT, hb⟩ := h
  refine ⟨k, C, T, hC, hT, ?_⟩
  intro A hA
  rw [hdecode A (hT.trans hA)]
  exact hb A hA

end
end GRWTSK.RiemannHypothesis.Conversation.SelectorUniformity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectorUniformity/Variante74bced50c8c6d1bb4b64744765fc9bf1acaae8d685fbe1134af30a9eb2216cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectorUniformity/Variante74bced50c8c6d1bb4b64744765fc9bf1acaae8d685fbe1134af30a9eb2216cd.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b21a7c4723123d28ef44fa89d0a91e65d5cb7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
