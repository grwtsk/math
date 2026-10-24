# package_of_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ff563bc-d7a2-8b74-ef85-a436301fae79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb82ac6f-b466-1c98-02f4-d6988e2c60c8",
  "kind": "theorem",
  "lexical_name": "package_of_check",
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
  "slug": "package-of-check--f3a0be067b268fa50375ed49",
  "source": {
    "blob": "e7d0d26e944e626559e985530a2ec6d3e3e97b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a0be067b268fa50375ed497f6f1b93924f817b2a2e614422b0db46c693a33b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb82ac6f-b466-1c98-02f4-d6988e2c60c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem package_of_check (d : CertData) (hc : check d = true) (S : ℕ → ℝ) (hS : EnclOK d.K S 0 d.encl) :
    |Dfun (massOf S d.N) d.N 1| ≤ (d.bD1n : ℝ) / d.bD1d ∧ |Efun (massOf S d.N) d.N 1| ≤ (d.bE1n : ℝ) / d.bE1d ∧
    (∀ t ∈ Icc (0 : ℝ) 1, |Dfun (massOf S d.N) d.N t| ≤ (d.b1n : ℝ) / d.b1d) ∧
    (∀ x ∈ Icc (0 : ℝ) 1, |Efun (massOf S d.N) d.N x| ≤ (d.b2n : ℝ) / d.b2d) := by
  obtain ⟨hD1, hE1, hD, hE⟩ := cert_of_check d hc S hS
  have hN : 0 < d.N := by
    simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
    exact hc.1.1.1.1.1.1.1.1.1.2
  have hNr : (0 : ℝ) < d.N := by exact_mod_cast hN
  have h1 : (1 : ℝ) = (d.N : ℝ) / d.N := (div_self hNr.ne').symm
  refine ⟨?_, ?_, abs_Dfun_le_of_grid hN hD, abs_Efun_le_of_grid hN hE⟩
  · rw [h1, Dfun_grid_eq_Dright hN le_rfl]; exact hD1
  · rw [h1, Efun_grid_eq_Egrid hN le_rfl]; exact hE1

end PairCeiling
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Bridge/Variantf8aaee70f3232d922e7d26f987b57e96c704c264518d47b2c1daa144eb827de4.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7d0d26e944e626559e985530a2ec6d3e3e97b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
