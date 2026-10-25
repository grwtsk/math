# response_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:347ad42b-42d7-3e74-5fd3-5549f722ecac",
  "kind": "theorem",
  "lexical_name": "response_norm_bound",
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
  "slug": "response-norm-bound--1c0d11510f774caf0ecdc467",
  "source": {
    "blob": "e70121258818465f72ece3e908c0d7cf1b87410d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0d11510f774caf0ecdc467126171bd890b8788bd83f37432d3671b5096501b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:347ad42b-42d7-3e74-5fd3-5549f722ecac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_norm_bound {m : ℕ} (hm : 2 ≤ m) :
    ‖response m (witness m)‖ ≤ Real.sqrt (2 * (m + 1 : ℝ)) * (Real.log 3 / m) ^ m := by
  have hq : 0 ≤ (Real.log 3 / (m : ℝ)) ^ m := by positivity
  have hs : ‖response m (witness m)‖ ^ 2 ≤
      (2 * (m + 1 : ℝ)) * ((Real.log 3 / m) ^ m) ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq]
    calc
      _ ≤ ∑ _pr : Fin 2 × Fin (m + 1), ((Real.log 3 / (m : ℝ)) ^ m) ^ 2 := by
        apply Finset.sum_le_sum
        intro pr _
        exact pow_le_pow_left₀ (norm_nonneg _) (response_coordinate_bound hm pr.1 pr.2) 2
      _ = _ := by simp
  have ht := Real.sqrt_le_sqrt hs
  rw [Real.sqrt_sq (norm_nonneg _), Real.sqrt_mul (by positivity), Real.sqrt_sq hq] at ht
  exact ht

end
end GRWTSK.RiemannHypothesis.Conversation.MixtureBinomialWitness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variant4ca27aba0b7c559bc077ec8d4cbdbeeabc312ae1e3db663679faac02746839e1.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e70121258818465f72ece3e908c0d7cf1b87410d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
