# actualClosedAbsolutePrimeMoment_no_constant_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6d673c7-18c2-3ed8-6de4-4cafad0fc9be",
  "kind": "theorem",
  "lexical_name": "actualClosedAbsolutePrimeMoment_no_constant_tail_bound",
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
  "slug": "actualclosedabsoluteprimemoment-no-constant-tail-bound--cc08d042a0ee4ae5bbfc951c",
  "source": {
    "blob": "1cfb37d341d9c7beb201ce98a17e9281ada55336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc08d042a0ee4ae5bbfc951c5ea8419adcb847212ed4515ab1d0f4f3be226ff9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d673c7-18c2-3ed8-6de4-4cafad0fc9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedAbsolutePrimeMoment_no_constant_tail_bound :
    ¬ ∃ K R : ℝ, ∀ A : ℝ, R ≤ A → actualClosedAbsolutePrimeMoment A ≤ K := by
  rintro ⟨K,R,hbound⟩
  have he := actualClosedAbsolutePrimeMoment_tendsto_atTop.eventually
    (eventually_ge_atTop (K + 1))
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 he
  have hl := hR0 (max R R0) (le_max_right _ _)
  have hu := hbound (max R R0) (le_max_left _ _)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualAbsolutePrimeMomentObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentObstruction/Variant85160cf4b2a27555d4a2c8d6f215e6af35fb35e4a8ede533efd0da30d7154397.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cfb37d341d9c7beb201ce98a17e9281ada55336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
