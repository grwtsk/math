# finite_source_energy_eq_gram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c141cca-cfde-3ee8-5c1d-82493219441d",
  "kind": "theorem",
  "lexical_name": "finite_source_energy_eq_gram",
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
  "slug": "finite-source-energy-eq-gram--32a6cd4b823eee38dbd928d6",
  "source": {
    "blob": "e6f70fee1ac6edaf24dccb14c8f63341d7d4554e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/Analysis/InnerProductSpace/DilationGram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32a6cd4b823eee38dbd928d6492eb46e47c7be36133bf50101a6e7fa33db64f6",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/DilationGram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c141cca-cfde-3ee8-5c1d-82493219441d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_source_energy_eq_gram {ι : Type*} {A : ℝ}
    (hA : 0 < A)
    (s : Finset ι) (label : ι → ℕ) (w : ι → ℝ)
    (positive : ∀ n ∈ s, 0 < label n) :
    (∫ x : ℝ, (∑ n ∈ s, w n * sourceVector A (label n) x) ^ 2) =
      ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * sourceGram A (label m) (label n) := by
  have mixedIntegrable (m n : ι) : Integrable (fun x : ℝ ↦
      (w m * w n) * (sourceVector A (label m) x * sourceVector A (label n) x)) :=
    (source_vectors_product_integrable hA (label m) (label n)).const_mul _
  simp_rw [finite_weighted_source_square]
  rw [integral_finsetSum s (fun m _ ↦
    integrable_finsetSum s (fun n _ ↦ mixedIntegrable m n))]
  apply Finset.sum_congr rfl
  intro m hm
  rw [integral_finsetSum s (fun n _ ↦ mixedIntegrable m n)]
  apply Finset.sum_congr rfl
  intro n hn
  rw [integral_const_mul, source_gram_eq_integral (positive m hm) (positive n hn)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/DilationGram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/DilationGram.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6f70fee1ac6edaf24dccb14c8f63341d7d4554e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
