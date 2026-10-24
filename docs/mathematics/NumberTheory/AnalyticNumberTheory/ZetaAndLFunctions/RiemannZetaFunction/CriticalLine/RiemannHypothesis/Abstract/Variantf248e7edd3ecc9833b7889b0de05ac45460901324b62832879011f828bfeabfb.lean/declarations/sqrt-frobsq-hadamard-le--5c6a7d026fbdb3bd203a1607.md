# sqrt_frobSq_hadamard_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d25a050-0f94-06c3-b571-0709070408ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d72c404-ad61-668b-f83e-2213e3446957",
  "kind": "lemma",
  "lexical_name": "sqrt_frobSq_hadamard_le",
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
  "slug": "sqrt-frobsq-hadamard-le--5c6a7d026fbdb3bd203a1607",
  "source": {
    "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6a7d026fbdb3bd203a1607dd37c5806528ad3f973eb7196d05408d1e6df0ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d72c404-ad61-668b-f83e-2213e3446957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_frobSq_hadamard_le (Δ : n → n → ℝ) (Q : Matrix n n ℂ) {θ : ℝ} (hθ : 0 ≤ θ)
    (hΔ : ∀ i j, |Δ i j| ≤ θ) :
    Real.sqrt (frobSq (fun i j => (Δ i j : ℂ) * Q i j)) ≤ θ * Real.sqrt (frobSq Q) := by
  have h := frobSq_hadamard_le Δ Q hΔ
  calc Real.sqrt (frobSq (fun i j => (Δ i j : ℂ) * Q i j))
      ≤ Real.sqrt (θ ^ 2 * frobSq Q) := Real.sqrt_le_sqrt h
    _ = θ * Real.sqrt (frobSq Q) := by
        rw [Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq hθ]

/-! ### B. Minkowski for a series of matrices, via partial sums -/

section Frob
open scoped Matrix.Norms.Frobenius

/-- If ‖S_r‖_F ≤ s_r with Σ_{r<R} s_r ≤ B for every R, and the partial sums Σ_{r<R} S_r converge to D
entrywise, then ‖D‖_F² ≤ B². -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a42f917d626b73389cf92ccd34f949a5e813862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
