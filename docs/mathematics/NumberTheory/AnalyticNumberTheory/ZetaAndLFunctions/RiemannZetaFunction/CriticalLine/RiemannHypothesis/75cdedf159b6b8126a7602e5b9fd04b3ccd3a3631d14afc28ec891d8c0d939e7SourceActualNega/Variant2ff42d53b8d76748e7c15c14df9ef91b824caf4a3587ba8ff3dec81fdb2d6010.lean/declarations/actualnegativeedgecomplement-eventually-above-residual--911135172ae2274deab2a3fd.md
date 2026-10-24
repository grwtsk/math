# actualNegativeEdgeComplement_eventually_above_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45643991-b1d8-1baf-f3ff-e3bb6d45b01e",
  "kind": "theorem",
  "lexical_name": "actualNegativeEdgeComplement_eventually_above_residual",
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
  "slug": "actualnegativeedgecomplement-eventually-above-residual--911135172ae2274deab2a3fd",
  "source": {
    "blob": "d5d3bff34e1e0fe9a46fcf8c32c2dca6caae55a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911135172ae2274deab2a3fd1450e72a14ba4c07dd1f11f9c713c00c0b166024",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45643991-b1d8-1baf-f3ff-e3bb6d45b01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNegativeEdgeComplement_eventually_above_residual :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A + actualNegativeEdgeConstant * Real.exp A / A ^ 9 ≤
        actualNegativeEdgeComplement A := by
  obtain ⟨R, hR, he⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have h := actualResidual_eq_negativeEdge_add_complement (hR.trans hA)
  have heA := he A hA
  rw [neg_mul, neg_div] at heA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeMangoldt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d3bff34e1e0fe9a46fcf8c32c2dca6caae55a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
