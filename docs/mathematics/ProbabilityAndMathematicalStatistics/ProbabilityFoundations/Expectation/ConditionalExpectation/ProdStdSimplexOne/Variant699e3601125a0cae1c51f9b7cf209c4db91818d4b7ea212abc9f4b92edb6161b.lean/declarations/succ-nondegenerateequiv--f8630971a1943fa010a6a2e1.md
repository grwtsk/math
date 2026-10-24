# δ_succ_nonDegenerateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29e4d51f3416747817f8956870bd6092cb4690d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:badd5438-4853-3f3d-adb0-1d173c0f194d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa7dfac6-4b73-7077-906c-7da4005c765d",
  "kind": "lemma",
  "lexical_name": "δ_succ_nonDegenerateEquiv",
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
  "slug": "succ-nondegenerateequiv--f8630971a1943fa010a6a2e1",
  "source": {
    "blob": "29e4d51f3416747817f8956870bd6092cb4690d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 153,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8630971a1943fa010a6a2e12b49f7ff44801103e7797daa27cefb26a8d586ca",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa7dfac6-4b73-7077-906c-7da4005c765d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_succ_nonDegenerateEquiv (j : Fin (p + 1)) :
    (Δ[p] ⊗ Δ[1]).δ j.succ (nonDegenerateEquiv.{u} j).val =
      (codimOneSimplex j.succ).val := by
  apply Prod.ext
  · exact stdSimplex.objEquiv.injective SimplexCategory.δ_comp_σ_succ
  · dsimp
    rw [stdSimplex.δ_objMk₁_of_le _ _ (by simp)]
    simp only [Fin.succ_castSucc, Fin.castPred_castSucc]

end prodStdSimplex₁

@[deprecated (since := "2026-08-13")]
alias prodStdSimplex.nonDegenerateEquiv₁ := prodStdSimplex₁.nonDegenerateEquiv
@[deprecated (since := "2026-08-13")]
alias prodStdSimplex.nonDegenerateEquiv₁_fst := prodStdSimplex₁.nonDegenerateEquiv_fst
@[deprecated (since := "2026-08-13")]
alias prodStdSimplex.nonDegenerateEquiv₂_snd := prodStdSimplex₁.nonDegenerateEquiv_snd

end SSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e4d51f3416747817f8956870bd6092cb4690d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
