# actual_height_normalized_fold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:848f1a10-8bc6-d2bc-0ab2-e317d987977e",
  "kind": "theorem",
  "lexical_name": "actual_height_normalized_fold",
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
  "slug": "actual-height-normalized-fold--868b5a61f7b2f45c605eb8f7",
  "source": {
    "blob": "8c45727dce9ba58e309bb9d2e2c417c34dfcc9d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeAccordionFold/Variantea1512e5cae41adb622e6ac9a8a7cc7296447b931eb1881d276fe7e302309818.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:868b5a61f7b2f45c605eb8f796ddd7fecac1f27930e7c5238312c54e8335732d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeAccordionFold/Variantea1512e5cae41adb622e6ac9a8a7cc7296447b931eb1881d276fe7e302309818.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848f1a10-8bc6-d2bc-0ab2-e317d987977e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_height_normalized_fold {N K : ℕ} {H : ℝ}
    (hN : 1 ≤ N) (hK : 0 < K) (hH : 0 < H) :
    (∑ j ∈ Finset.range K, (storage N j / H) *
      (fold N K (j + 1) - fold N K j) / 2) = debt N K / (H * width N K) := by
  have hW := width_pos hN hK
  unfold debt
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro j _
  rw [mul_div_assoc, mapped_cell_half_length hN hK]
  field_simp [hH.ne', hW.ne']

end
end GRWTSK.RiemannHypothesis.Conversation.NativeAccordionFold
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeAccordionFold/Variantea1512e5cae41adb622e6ac9a8a7cc7296447b931eb1881d276fe7e302309818.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeAccordionFold/Variantea1512e5cae41adb622e6ac9a8a7cc7296447b931eb1881d276fe7e302309818.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c45727dce9ba58e309bb9d2e2c417c34dfcc9d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
