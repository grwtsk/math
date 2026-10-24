# finite_terminal_completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7683d2fb-fbe4-bb28-cf57-defb0bf89bce",
  "kind": "theorem",
  "lexical_name": "finite_terminal_completion",
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
  "slug": "finite-terminal-completion--aeb685b5638e3489bd85e417",
  "source": {
    "blob": "1849c7cac36e03b389e5d0a0377f19fe18da2403",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeb685b5638e3489bd85e4177e51faf980717dabea566e34e413f1ea73c8b933",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7683d2fb-fbe4-bb28-cf57-defb0bf89bce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_terminal_completion {N : ℕ} (s : State N) :
    ∃ t : State N, ∃ k : ℕ,
      ExtractionPath s t k ∧ k < s.residual ∧ (ResidualOne t ∨ PrimeResidual t) := by
  have complete : ∀ R : ℕ, ∀ s : State N, s.residual = R →
      ∃ t : State N, ∃ k : ℕ,
        ExtractionPath s t k ∧ k < s.residual ∧ (ResidualOne t ∨ PrimeResidual t) := by
    intro R
    induction R using Nat.strong_induction_on with
    | h R ih =>
      intro s hs
      by_cases h1 : s.residual = 1
      · exact ⟨s, 0, .refl s, s.residual_pos, Or.inl ⟨h1⟩⟩
      by_cases hp : s.residual.Prime
      · exact ⟨s, 0, .refl s, s.residual_pos, Or.inr ⟨hp⟩⟩
      obtain ⟨p, hsmall, c⟩ := nonterminal_step s h1 hp
      have hafter : (extract s c).residual < R := by simpa [extract, hs] using c.shrinks
      obtain ⟨t, k, path, hk, terminal⟩ := ih (extract s c).residual hafter (extract s c) rfl
      refine ⟨t, k + 1, .step s c hsmall path, ?_, terminal⟩
      have hshrink : (extract s c).residual < s.residual := c.shrinks
      omega
  exact complete s.residual s rfl

/-- The terminal state produces the exact factorization of the original input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Varianta2e0bd1c05db36624948407c525ee532c72f8aff3dc307abb33b10114f04477b.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1849c7cac36e03b389e5d0a0377f19fe18da2403` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
