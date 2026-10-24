# iteratedDeriv_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2fcb886-6ca5-deba-6b82-305bb4dda821",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2637113c-a4ef-3d37-2ad1-02774297ac4d",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_reflect",
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
  "slug": "iteratedderiv-reflect--137306100a0a2b89a0fac8c9",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 485,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137306100a0a2b89a0fac8c92abab2adc2ea2dd98dbc6533099a698a84640759",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2637113c-a4ef-3d37-2ad1-02774297ac4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_reflect {f : ℝ → ℝ} {c : ℝ} {n : ℕ} (hf : ContDiff ℝ n f) (t : ℝ) :
    iteratedDeriv n (fun s => f (2 * c - s)) t = (-1 : ℝ) ^ n * iteratedDeriv n f (2 * c - t) := by
  have heq : (fun s => f (2 * c - s)) = (fun s => (fun x => f (x + 2 * c)) (-s)) := by
    ext s; ring_nf
  rw [heq]
  rw [iteratedDeriv_comp_neg n (fun x => f (x + 2 * c)) t]
  simp only [smul_eq_mul]
  congr 1
  clear heq
  induction n generalizing f with
  | zero => simp only [iteratedDeriv_zero]; ring_nf
  | succ n ih =>
    rw [iteratedDeriv_succ', iteratedDeriv_succ']
    have hf' : ContDiff ℝ (n + 1) f := hf
    have hderiv_eq : deriv (fun x => f (x + 2 * c)) = fun x => deriv f (x + 2 * c) := by
      ext x
      have hdiff : DifferentiableAt ℝ f (x + 2 * c) :=
        (hf'.differentiable (by simp : ((n : ℕ) + 1 : WithTop ℕ∞) ≠ 0)).differentiableAt
      have hlin : DifferentiableAt ℝ (fun y => y + 2 * c) x :=
        differentiableAt_id.add (differentiableAt_const _)
      have h1 := deriv_comp x hdiff hlin
      simp only [deriv_add_const, deriv_id'', mul_one] at h1
      exact h1
    rw [hderiv_eq]
    have hdf : ContDiff ℝ n (deriv f) := by
      have h := hf'.iterate_deriv' n 1
      simp only [Function.iterate_one] at h
      exact h
    exact ih hdf

/-- Auxiliary lemma: (-1)^n * (-1)^n = 1 for any natural n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
