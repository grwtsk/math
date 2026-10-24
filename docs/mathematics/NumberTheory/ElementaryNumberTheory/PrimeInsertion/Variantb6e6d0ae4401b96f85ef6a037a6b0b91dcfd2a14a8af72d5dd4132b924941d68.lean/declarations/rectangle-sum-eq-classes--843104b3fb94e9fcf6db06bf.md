# rectangle_sum_eq_classes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1475be31-8756-0d6c-f3f7-08a862f0501b",
  "kind": "theorem",
  "lexical_name": "rectangle_sum_eq_classes",
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
  "slug": "rectangle-sum-eq-classes--843104b3fb94e9fcf6db06bf",
  "source": {
    "blob": "fdd6e7d0f329c551e9b0facacdf63686f49357c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 255,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:843104b3fb94e9fcf6db06bf589322a628062caf6956ceec25de99760a552fe8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1475be31-8756-0d6c-f3f7-08a862f0501b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem rectangle_sum_eq_classes (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N : ℕ) (E : ℕ → ℝ) :
    (∑ g ∈ Icc 1 N, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      rectangularContribution P g (N / g) (N / g) E) =
      ∑ a ∈ supportedPairs P, (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max a.1 a.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) := by
  unfold rectangularContribution
  simp_rw [mul_sum]
  rw [sum_comm]
  apply sum_congr rfl
  intro a ha
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  have hu := Nat.one_le_iff_ne_zero.mpr hs.1.ne_zero
  simp_rw [mul_ite, mul_zero]
  rw [← sum_filter, rectangular_scale_indices N a.1 a.2 hu]
  apply sum_congr rfl
  intro g _
  split_ifs <;> ring

/-- Reordering the actual supported block retains each exact source common-scale cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd6e7d0f329c551e9b0facacdf63686f49357c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
