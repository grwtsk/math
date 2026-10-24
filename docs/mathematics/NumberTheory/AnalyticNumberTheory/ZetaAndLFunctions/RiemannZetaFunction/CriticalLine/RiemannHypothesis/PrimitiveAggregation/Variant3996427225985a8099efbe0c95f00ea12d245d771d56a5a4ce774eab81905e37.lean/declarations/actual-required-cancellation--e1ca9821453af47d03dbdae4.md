# actual_required_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72984124-8abc-eed3-b2a3-d8f4bff3fac4",
  "kind": "theorem",
  "lexical_name": "actual_required_cancellation",
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
  "slug": "actual-required-cancellation--e1ca9821453af47d03dbdae4",
  "source": {
    "blob": "516d6f2b8707da1ce812b05e031709e3180784f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variant3996427225985a8099efbe0c95f00ea12d245d771d56a5a4ce774eab81905e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1ca9821453af47d03dbdae4d0a1f596b02b195f5890bd5ff768ca026906bbcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variant3996427225985a8099efbe0c95f00ea12d245d771d56a5a4ce774eab81905e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72984124-8abc-eed3-b2a3-d8f4bff3fac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_required_cancellation {ι : Type*} [Fintype ι]
    {t B E : ℝ} (ht : 4 ≤ t)
    (P : ι → ↥(Finset.Icc 2 ⌊Real.exp t⌋₊) → ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hcolumns : ∀ j, (∑ i, P i j) = 1)
    (hbudget : variation (aggregate P (primitiveRow (Real.exp t))) ≤ B + E) :
    Real.exp (t / 2) / 60 - (B + E) ≤
      2 * ∑ i, min (positiveChannel P (primitiveRow (Real.exp t)) i)
        (negativeChannel P (primitiveRow (Real.exp t)) i) := by
  have h := (actual_primitive_reconstruction_payment ht P hP hcolumns hbudget).2
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimitiveAggregation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variant3996427225985a8099efbe0c95f00ea12d245d771d56a5a4ce774eab81905e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimitiveAggregation/Variant3996427225985a8099efbe0c95f00ea12d245d771d56a5a4ce774eab81905e37.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516d6f2b8707da1ce812b05e031709e3180784f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
