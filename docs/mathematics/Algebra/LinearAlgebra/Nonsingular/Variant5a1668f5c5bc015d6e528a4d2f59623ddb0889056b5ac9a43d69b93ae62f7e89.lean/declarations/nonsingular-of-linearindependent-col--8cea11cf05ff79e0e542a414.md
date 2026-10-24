# Nonsingular.of_linearIndependent_col

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2434de1f-ea0d-fa88-eecb-a44080641c5e",
  "kind": "theorem",
  "lexical_name": "Nonsingular.of_linearIndependent_col",
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
  "slug": "nonsingular-of-linearindependent-col--8cea11cf05ff79e0e542a414",
  "source": {
    "blob": "f02e5ac5cbb91d9f5b51497e75596bbc829e03a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cea11cf05ff79e0e542a4140684c328a6e2bb6e94a28d0b61689263686f0248",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2434de1f-ea0d-fa88-eecb-a44080641c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nonsingular.of_linearIndependent_col (ind : LinearIndependent R A.col) : A.Nonsingular := by
  intro a b bal
  let P (r : ℕ) : Prop := ∀ f g : Fin r → n, (A.submatrix f g).IsDetpBalanced a b
  suffices h : P 0 by simpa [IsDetpBalanced] using h Fin.elim0 Fin.elim0
  refine Nat.decreasingInduction' (n := Fintype.card n) (fun r _ _ ih f g ↦ ?_) (Nat.zero_le _) <|
    bal.submatrix_of_card_le (Fintype.card_fin _).ge
  by_cases hg : g.Surjective
  · exact bal.submatrix_of_card_le (Fintype.card_le_of_surjective g hg) f g
  obtain ⟨j₀, h₀⟩ := by simpa [Function.Surjective] using hg
  let D := A.submatrix f g
  let Aj (j : Fin r) := A.submatrix f (Function.update g j j₀)
  let v (a b : R) : n →₀ R := ∑ j, .single (g j) (a * (Aj j).detp (-1) + b * (Aj j).detp 1) +
    .single j₀ (a * D.detp 1 + b * D.detp (-1))
  suffices h : v a b = v b a by simpa [IsDetpBalanced, v, h₀] using congr($h j₀)
  refine ind (funext fun i ↦ ?_)
  let Ai := A.submatrix (Option.rec i f) (Option.rec j₀ g)
  have (s : ℤˣ) : Ai.detp s = ∑ j, (Aj j).detp (-s) * A.col (g j) i + D.detp s * A.col j₀ i := by
    simp_rw [mul_comm]; rw [detp_option_expand_row_none, add_comm]
    congr!; aesop (add simp Function.update)
  have (a b : R) : (v a b).linearCombination R A.col i = a * Ai.detp 1 + b * Ai.detp (-1) := by
    simp [v, Finset.sum_add_distrib, mul_assoc, ← Finset.mul_sum, add_add_add_comm, mul_add, this]
  simpa [this, IsDetpBalanced, ← submatrix_submatrix] using
    ih (Option.rec i f ∘ finSuccEquiv r) (Option.rec j₀ g ∘ finSuccEquiv r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nonsingular/Variant5a1668f5c5bc015d6e528a4d2f59623ddb0889056b5ac9a43d69b93ae62f7e89.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f02e5ac5cbb91d9f5b51497e75596bbc829e03a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
