# integral_divergence_of_hasFDerivAt_off_countable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2098b906-45c4-0ba7-d592-2862a25e7347",
  "kind": "theorem",
  "lexical_name": "integral_divergence_of_hasFDerivAt_off_countable'",
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
  "slug": "integral-divergence-of-hasfderivat-off-countable--077d00bbffef96f64144b36c",
  "source": {
    "blob": "69c4d46311e36fe8a25ea9b759d8fefa63035017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077d00bbffef96f64144b36cefb0524058a9adbafe1b2dcaaecba200b6850a99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2098b906-45c4-0ba7-d592-2862a25e7347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_divergence_of_hasFDerivAt_off_countable' (hle : a ≤ b)
    (f : Fin (n + 1) → ℝⁿ⁺¹ → E)
    (f' : Fin (n + 1) → ℝⁿ⁺¹ → ℝⁿ⁺¹ →L[ℝ] E) (s : Set ℝⁿ⁺¹)
    (hs : s.Countable) (Hc : ∀ i, ContinuousOn (f i) (Icc a b))
    (Hd : ∀ x ∈ (pi Set.univ fun i => Ioo (a i) (b i)) \ s, ∀ (i), HasFDerivAt (f i) (f' i x) x)
    (Hi : IntegrableOn (fun x => ∑ i, f' i x (e i)) (Icc a b)) :
    (∫ x in Icc a b, ∑ i, f' i x (e i)) =
      ∑ i : Fin (n + 1), ((∫ x in face i, f i (frontFace i x)) -
        ∫ x in face i, f i (backFace i x)) :=
  integral_divergence_of_hasFDerivAt_off_countable a b hle (fun x i => f i x)
    (fun x => ContinuousLinearMap.pi fun i => f' i x) s hs (continuousOn_pi.2 Hc)
    (fun x hx => hasFDerivAt_pi.2 (Hd x hx)) Hi

@[deprecated (since := "2025-05-02")]
alias integral_divergence_of_hasFDerivWithinAt_off_countable' :=
  integral_divergence_of_hasFDerivAt_off_countable'

end

/-- An auxiliary lemma that is used to specialize the general divergence theorem to spaces that do
not have the form `Fin n → ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DivergenceTheorem/Variante6c4149ad76661ed1bdd6b3932cb9bcf8cbd7b6772ba3e005ade2ce638599ffa.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4d46311e36fe8a25ea9b759d8fefa63035017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
