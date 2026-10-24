# theorem_6_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6796eb28-bf4c-007f-113c-78a7131c097e",
  "kind": "theorem",
  "lexical_name": "theorem_6_3",
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
  "slug": "theorem-6-3--0855c1b2f3fa008c5c07ccce",
  "source": {
    "blob": "96412d1ff7921d8348f589fce58fc9abd41397e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3533,
    "line": 3502,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0855c1b2f3fa008c5c07ccce3a62f9c18975edf28aaaeb7d09203f3d080fad76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6796eb28-bf4c-007f-113c-78a7131c097e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3502–3533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_6_3 {x₁ : ℝ} (h : x₁ ≥ 14) (x₂ : ℝ) (hx₂ : x₂ ≥ x₁) (x : ℝ) (hx : x ≥ x₁) (hx' : x ≤ x₂) (hx₂' : x₂ ≤ x₁ * log x₁) :
  (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2 ≤
    (log x₂ / x₂) * (Li x₂ - x₂ / log x₂ - Li x₁ + x₁ / log x₁) := by
    have h_integral_le_integral : (log x / x) * ∫ t in x₁..x, 1 / (log t) ^ 2 ≤ (log x / x) * (Li x - x / log x - Li x₁ + x₁ / log x₁) := by
      rw [ integral_one_div_log_sq ] <;> try linarith;
    have h_monotone : MonotoneOn (fun t => (log t / t) * (Li t - t / log t - Li x₁ + x₁ / log x₁)) (Set.Icc x₁ (x₁ * log x₁)) := by
      have h_monotone : MonotoneOn (fun t => (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) (Set.Icc x₁ (x₁ * log x₁)) := by
        apply_rules [ h_monotoneOn ];
    -- Using the fact that the integral of 1/(log t)^2 from x₁ to t is equal to Li t - t / log t - Li x₁ + x₁ / log x₁, we can rewrite the function.
      have h_integral_eq : ∀ t ∈ Set.Icc x₁ (x₁ * log x₁), ∫ s in x₁..t, 1 / (log s) ^ 2 = Li t - t / log t - Li x₁ + x₁ / log x₁ := by
        intros t ht; rw [ integral_one_div_log_sq ]
        · ring
        · linarith
        · linarith [ ht.1 ]
      exact fun t ht u hu htu => by simpa only [ h_integral_eq t ht, h_integral_eq u hu ] using h_monotone ht hu htu;
    exact h_integral_le_integral.trans ( h_monotone ⟨ by linarith, by linarith ⟩ ⟨ by linarith, by linarith ⟩ hx' )

blueprint_comment /--
We can merge these sublemmas together after making some definitions. -/

@[blueprint
  "fks2-eq-11"
  (title := "FKS2 equation (11)")
  (statement := /--
  For $x_1 \leq x_2 \leq x_1 \log x_1$, we define
  $$ \mu_{num,1}(x_0,x_1,x_2) := \frac{x_0 \log(x_1)}{\epsilon_{\theta,num}(x_1) x_1 \log(x_0)}
    \left|\frac{\pi(x_0) - \Li(x_0)}{x_0/\log x_0} - \frac{\theta(x_0) - x_0}{x_0}\right| +
    \frac{\log(x_1)}{\epsilon_{\theta,num}(x_1) x_1}
    \sum_{i=0}^{N-1} \epsilon_{\theta,num}(e^{b_i})
    \left( \Li(e^{b_{i+1}}) - \Li(e^{b_i}) + \frac{e^{b_i}}{b_i} - \frac{e^{b_{i+1}}}{b_{i+1}} \right) +
    \frac{\log(x_2)}{x_2} \left( \Li(x_2) - \frac{x_2}{\log x_2} - \Li(x_1) + \frac{x_1}{\log x_1} \right).$$
   -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant13318ed7369122d67b7527abd125f40dcb9ad2078310279224ea1cd6af5ee91d.lean#L3502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96412d1ff7921d8348f589fce58fc9abd41397e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
