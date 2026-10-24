# exists_real_interpolate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fabe646-ed24-5b6f-30bc-52c5e9fa34b4",
  "kind": "theorem",
  "lexical_name": "exists_real_interpolate",
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
  "slug": "exists-real-interpolate--b8058c86a7e7fc9e7a47af08",
  "source": {
    "blob": "736d988a73a4dc785263da7a17e00b7254474e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 50,
    "path": "GRWTSK/Algebra/Polynomial/ConjugateInterpolation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8058c86a7e7fc9e7a47af08fdc51cd1ff3d8576e8e13e061bc6178bb0a0a738",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/ConjugateInterpolation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fabe646-ed24-5b6f-30bc-52c5e9fa34b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_real_interpolate
    (nodes : Finset ℂ) (closed : ∀ z ∈ nodes, conj z ∈ nodes)
    (values : ℂ → ℂ)
    (compatible : ∀ z ∈ nodes, values (conj z) = conj (values z)) :
    ∃ p : Polynomial ℝ, p.degree < (nodes.card : WithBot ℕ) ∧
      ∀ z ∈ nodes, p.eval₂ Complex.ofRealHom z = values z := by
  classical
  let q : Polynomial ℂ := Lagrange.interpolate nodes id values
  have hdegree : q.degree < (nodes.card : WithBot ℕ) :=
    Lagrange.degree_interpolate_lt values Function.injective_id.injOn
  have heval : ∀ z ∈ nodes, q.eval z = values z := by
    intro z hz
    exact Lagrange.eval_interpolate_at_node values Function.injective_id.injOn hz
  have hreal : ∀ n : ℕ, (q.coeff n).im = 0 := by
    apply coeff_im_eq_zero_of_eval_compatible nodes closed q hdegree
    intro z hz
    rw [heval (conj z) (closed z hz), heval z hz, compatible z hz]
  let p : Polynomial ℝ := Polynomial.ofFinsupp <| AddMonoidAlgebra.ofCoeff <|
    q.toFinsupp.coeff.mapRange Complex.re (by simp)
  have hpcoeff : ∀ n : ℕ, p.coeff n = (q.coeff n).re := by
    intro n
    simp only [p, Polynomial.coeff_ofFinsupp, Finsupp.mapRange_apply,
      Polynomial.toFinsupp_apply]
  have hpmap : p.map Complex.ofRealHom = q := by
    ext n
    rw [Polynomial.coeff_map, hpcoeff]
    apply Complex.ext
    · rfl
    · simpa only [Complex.ofRealHom_eq_coe, Complex.ofReal_im] using (hreal n).symm
  refine ⟨p, ?_, ?_⟩
  · rw [← Polynomial.degree_map_eq_of_injective (f := Complex.ofRealHom)
      Complex.ofReal_injective p, hpmap]
    exact hdegree
  · intro z hz
    rw [Polynomial.eval₂_eq_eval_map, hpmap]
    exact heval z hz

end GRWTSK.Polynomial.ConjugateInterpolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/ConjugateInterpolation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/ConjugateInterpolation.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `736d988a73a4dc785263da7a17e00b7254474e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
