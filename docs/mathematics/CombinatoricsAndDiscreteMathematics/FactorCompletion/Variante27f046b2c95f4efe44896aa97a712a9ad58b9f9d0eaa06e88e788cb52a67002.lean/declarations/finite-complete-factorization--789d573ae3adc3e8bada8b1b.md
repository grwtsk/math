# finite_complete_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40e24aef-fbe1-a618-2978-1fe1954f0580",
  "kind": "theorem",
  "lexical_name": "finite_complete_factorization",
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
  "slug": "finite-complete-factorization--789d573ae3adc3e8bada8b1b",
  "source": {
    "blob": "90c7aa5f19b5fe7dbc82044798da9295d26732b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:789d573ae3adc3e8bada8b1b9b886b6f1fa286d2b846e200b94c96ddb1274ae3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40e24aef-fbe1-a618-2978-1fe1954f0580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_complete_factorization {N : ℕ} (s : State N) :
    ∃ t : State N, ∃ k : ℕ, ∃ c : CompleteFactorization N,
      ExtractionPath s t k ∧ k < s.residual ∧ s.excluded ⊆ t.excluded ∧
        c.factors = N.factorization := by
  obtain ⟨t, k, path, hk, hterminal⟩ := finite_terminal_completion s
  obtain h1 | hp := hterminal
  · exact ⟨t, k, closeOne t h1, path, hk, path.preserves_exclusions,
      (closeOne t h1).exact.symm⟩
  · exact ⟨t, k, closePrime t hp, path, hk, path.preserves_exclusions,
      (closePrime t hp).exact.symm⟩

#print axioms canonicalExactExtraction
#print axioms ExtractionPath.refines
#print axioms ExtractionPath.preserves_exclusions
#print axioms nonterminal_step
#print axioms finite_terminal_completion
#print axioms finite_complete_factorization
#print finite_terminal_completion
#print finite_complete_factorization

end FormalResearch.SUCAS.FactorCompletion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorCompletion/Variante27f046b2c95f4efe44896aa97a712a9ad58b9f9d0eaa06e88e788cb52a67002.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c7aa5f19b5fe7dbc82044798da9295d26732b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
