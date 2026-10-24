# Submodule.span_eq_iUnion_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cf53823-abe1-8f8f-6fa4-701b1b9b0e90",
  "kind": "lemma",
  "lexical_name": "Submodule.span_eq_iUnion_nat",
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
  "slug": "submodule-span-eq-iunion-nat--a0c40cf0a2114115ccc115d3",
  "source": {
    "blob": "67dba10a16adc1d18cff5cfc7e80a6d2d8366986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 481,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c40cf0a2114115ccc115d3fa94b8aca394ce684723c1df8d772a2d4693a050",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cf53823-abe1-8f8f-6fa4-701b1b9b0e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.span_eq_iUnion_nat (s : Set M) :
    (Submodule.span R s : Set M) = ⋃ (n : ℕ),
      (fun (f : Fin n → (R × M)) ↦ ∑ i, (f i).1 • (f i).2) '' ({f | ∀ i, (f i).2 ∈ s}) := by
  ext m
  simp only [SetLike.mem_coe, mem_iUnion, mem_image, mem_setOf_eq, mem_span_set']
  refine exists_congr (fun n ↦ ⟨?_, ?_⟩)
  · rintro ⟨f, g, rfl⟩
    exact ⟨fun i ↦ (f i, g i), fun i ↦ (g i).2, rfl⟩
  · rintro ⟨f, hf, rfl⟩
    exact ⟨fun i ↦ (f i).1, fun i ↦ ⟨(f i).2, (hf i)⟩, rfl⟩

section Ring

variable {R M ι : Type*} [Ring R] [AddCommGroup M] [Module R M] (i : ι) (c : ι → R) (h₀ : c i = 0)

/-- Given `c : ι → R` and an index `i` such that `c i = 0`, this is the linear isomorphism sending
the `j`-th standard basis vector to itself plus `c j` multiplied with the `i`-th standard basis
vector (in particular, the `i`-th standard basis vector is kept invariant). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearCombination/Variantdd5603a346ca04ed14e4b00a778db3781079985d452813eab56b74518469e332.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67dba10a16adc1d18cff5cfc7e80a6d2d8366986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
