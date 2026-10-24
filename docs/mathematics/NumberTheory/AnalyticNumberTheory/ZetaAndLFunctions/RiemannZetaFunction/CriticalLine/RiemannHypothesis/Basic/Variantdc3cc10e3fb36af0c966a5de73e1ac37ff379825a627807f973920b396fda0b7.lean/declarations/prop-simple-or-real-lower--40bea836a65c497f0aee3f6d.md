# prop_simple_or_real_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "326595ae63f3223a3e4c82eaa7d42ab024d5e78f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc3cc10e3fb36af0c966a5de73e1ac37ff379825a627807f973920b396fda0b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:566bc807-6918-10d1-f43f-b40f0180c4ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a82ac348-b0e4-cee9-b50c-f4fcc3dfa23e",
  "kind": "theorem",
  "lexical_name": "prop_simple_or_real_lower",
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
  "slug": "prop-simple-or-real-lower--40bea836a65c497f0aee3f6d",
  "source": {
    "blob": "326595ae63f3223a3e4c82eaa7d42ab024d5e78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantdc3cc10e3fb36af0c966a5de73e1ac37ff379825a627807f973920b396fda0b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40bea836a65c497f0aee3f6d0131c6dc7a23fa7fa48046e794be3d4dae3bfa4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantdc3cc10e3fb36af0c966a5de73e1ac37ff379825a627807f973920b396fda0b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a82ac348-b0e4-cee9-b50c-f4fcc3dfa23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_simple_or_real_lower {lam : ℝ} {eta : ℝ → ℝ} {Z : Finset ℂ} {m : ℂ → ℕ} {A : ℝ}
    (h : IsAdmissible lam eta) (hZ : IsConjInvariant Z m) (hZne : Z.Nonempty)
    (hA₁ : 1 ≤ A) (hA₂ : A < 2)
    (hbound : (∑ z ∈ Z, ∑ s ∈ Z, (m z * m s : ℂ) * testKernel eta (z - s) ^ 2).re
      ≤ A * ∑ z ∈ Z, (m z : ℝ)) :
    (5 + 2 * Real.sqrt 2 - 2 * A) / (3 + 2 * Real.sqrt 2) * (∑ z ∈ Z, (m z : ℝ))
      ≤ ∑ z ∈ simpleOrRealPart Z m, (m z : ℝ) :=
  sorry

end Challenge

/-! ## The main results

The four proportions. The constants are spelled out in closed form; numerically

* `C₀ = 3/2 - (1/√2) cot(1/√2)             = 0.6725007037…`
* `C₁ = 5/4 - (1/(2√2)) cot(1/√2)          = 0.8362503518…`
* `C₂ = (4 + 2√2 - √2 cot(1/√2)) / (3 + 2√2) = 0.8876200082…`

where `C₀ = 2 - C_MT`, `C₁ = 3/2 - C_MT/2` and `C₂ = (5 + 2√2 - 2 C_MT) / (3 + 2√2)` for the
Montgomery--Taylor constant `C_MT = 1/2 + (1/√2) cot(1/√2)`.
-/

namespace Challenge

/-- **`thm_simple`.** Beyond a height depending on `ε`, the proportion of non-trivial zeros
that are simple and lie on the critical line exceeds `C₀ - ε = 0.6725007037… - ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantdc3cc10e3fb36af0c966a5de73e1ac37ff379825a627807f973920b396fda0b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantdc3cc10e3fb36af0c966a5de73e1ac37ff379825a627807f973920b396fda0b7.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326595ae63f3223a3e4c82eaa7d42ab024d5e78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
