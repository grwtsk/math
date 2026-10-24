# frobSq_Ppart_le_final

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29e0adc8f7c08fc7fb9053a45620403942e640c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fafb00ab-e870-ee08-7324-9e41159941d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19c44f35-f2fc-1319-1630-7c772c9a6ba5",
  "kind": "theorem",
  "lexical_name": "frobSq_Ppart_le_final",
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
  "slug": "frobsq-ppart-le-final--cdd0d867bdb9d77cbcaa0d3f",
  "source": {
    "blob": "29e0adc8f7c08fc7fb9053a45620403942e640c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd0d867bdb9d77cbcaa0d3f690eb9cd441b0f7550ecc9b3bca4c1df9ecc785a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c44f35-f2fc-1319-1630-7c772c9a6ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobSq_Ppart_le_final {C : ℝ} (hMV : Zeta23.MVHilbert C) (hC : 0 < C)
    (cϱ lam : ℝ) (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ K T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (e : ℕ → ℂ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCore cϱ p F → e 1 = 0 →
      ∑ k : Fin p.d, ∑ l : Fin p.d, GentryNu (Pc p.X e) p F k l ^ 2
        ≤ K * p.L ^ 2 * (p.T * p.L * sumSqDivW e p.X + p.L * sumSqW e p.X
            + p.L * S1 e p.X ^ 2 + p.L * p.l * Real.log p.l * (p.l + S1 e p.X) ^ 2) :=
  frobSq_Ppart_le ppInput_of_PP hMV hC cϱ lam hlam

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant2ea05fce3643fb4d8f234eb34d5b821724b35ad9707e97d4ba7cd327448d72ac.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e0adc8f7c08fc7fb9053a45620403942e640c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
