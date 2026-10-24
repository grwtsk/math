# analyticGroupoid_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffbd1830-96f5-b2b1-e992-e63ac4390b5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e64ee686-0c43-5b53-2015-6959d3771713",
  "kind": "theorem",
  "lexical_name": "analyticGroupoid_prod",
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
  "slug": "analyticgroupoid-prod--9d9c352b084a4ab9ed5dc24f",
  "source": {
    "blob": "f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 131,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d9c352b084a4ab9ed5dc24f2d1dae5a5c0b4a8cafd1fad18710aac01a700953",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64ee686-0c43-5b53-2015-6959d3771713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analyticGroupoid_prod {E A : Type} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [TopologicalSpace A] {F B : Type} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace B] {I : ModelWithCorners 𝕜 E A} {J : ModelWithCorners 𝕜 F B}
    {f : PartialHomeomorph A A} {g : PartialHomeomorph B B}
    (fa : f ∈ analyticGroupoid I) (ga : g ∈ analyticGroupoid J) :
    f.prod g ∈ analyticGroupoid (I.prod J) := by
  have pe : range (I.prod J) = (range I).prod (range J) := I.range_prod
  simp only [mem_analyticGroupoid, Function.comp, image_subset_iff] at fa ga ⊢
  exact ⟨AnalyticOn.prod
      (fa.1.comp analyticOn_fst fun _ m ↦ ⟨m.1.1, (pe ▸ m.2).1⟩)
      (ga.1.comp analyticOn_snd fun _ m ↦ ⟨m.1.2, (pe ▸ m.2).2⟩),
    AnalyticOn.prod
      (fa.2.comp analyticOn_fst fun _ m ↦ ⟨m.1.1, (pe ▸ m.2).1⟩)
      (ga.2.comp analyticOn_snd fun _ m ↦ ⟨m.1.2, (pe ▸ m.2).2⟩)⟩

end analyticGroupoid

section AnalyticManifold

/-- An analytic manifold w.r.t. a model `I : ModelWithCorners 𝕜 E H` is a charted space over `H`
s.t. all extended chart conversion maps are analytic. -/
@[deprecated "use instead `IsManifold ω`" (since := "2025-04-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f292f5677b62aeb8bdb06c3b15a9dd2d45bfc1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
