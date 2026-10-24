# disclosedReadout_large_prime_one_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e350258-4a56-a12b-4465-e9440af91632",
  "kind": "theorem",
  "lexical_name": "disclosedReadout_large_prime_one_block",
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
  "slug": "disclosedreadout-large-prime-one-block--f49fc1c54be6051096c541d6",
  "source": {
    "blob": "3682f8b05f269d4d0623aefdd455649bb0e7a439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LargePrimeDisclosureSubcase/Variant4d5528425e66c00520d1cd571e41bd6c4c281a85525f851892b34057106d6c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f49fc1c54be6051096c541d6797c5b0e675a16dd8ea81c01fddd12670487ce57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LargePrimeDisclosureSubcase/Variant4d5528425e66c00520d1cd571e41bd6c4c281a85525f851892b34057106d6c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e350258-4a56-a12b-4465-e9440af91632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disclosedReadout_large_prime_one_block (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P) (hUp : U < p) :
    disclosedReadoutAt A hA U N (insert p P) - disclosedReadoutAt A hA U N P =
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 := by
  have hs := disclosedReadoutAt_fresh_prime A hA P U N p hP hp hpP
  rw [freshBetaRow_eq_zero_of_U_lt_p P U p hP hUp] at hs
  have hz (a : ℕ → ℂ) :
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N) a 0 0 = 0 := by
    simp [compensatedReadout, physicalDiagonal, finiteProfile]
  rw [hz, hz] at hs
  simpa only [zero_add, add_zero] using hs
end RH16LargePrimeDisclosureSubcase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LargePrimeDisclosureSubcase/Variant4d5528425e66c00520d1cd571e41bd6c4c281a85525f851892b34057106d6c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LargePrimeDisclosureSubcase/Variant4d5528425e66c00520d1cd571e41bd6c4c281a85525f851892b34057106d6c50.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3682f8b05f269d4d0623aefdd455649bb0e7a439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
