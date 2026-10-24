# dyadic_tower_compactification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ff91c20-52af-48c3-60a5-05b991fe2fcb",
  "kind": "theorem",
  "lexical_name": "dyadic_tower_compactification",
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
  "slug": "dyadic-tower-compactification--4a60e1a9913e3aa08fdb3c46",
  "source": {
    "blob": "15fb149f295c65d79270fa6727ef0d3a4aae3ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 254,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a60e1a9913e3aa08fdb3c46766e0fa0da7adbd77ac666e169d5d5689dfcff8e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ff91c20-52af-48c3-60a5-05b991fe2fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_tower_compactification
    (H : DyadicCompactificationHypotheses) :
    ∃ Ω : SymbolicInverseLimitSpace,
      Ω.compactSymbolic ∧
      Ω.bernoulliMeasureExists ∧
      Ω.cylinderFrequenciesMatch ∧
      H.uniformlyDyadic ∧
      H.refinementCompatible ∧
      ¬ FiniteTowerConstructsAnalyticGeometry H.tower :=
  ⟨H.inverseLimit,
   H.inverseLimit.compactProof,
   H.inverseLimit.measureProof,
   H.inverseLimit.cylinderProof,
   H.uniformlyDyadicProof,
   H.refinementProof,
   finite_tower_not_analytic_geometry H.tower⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fb149f295c65d79270fa6727ef0d3a4aae3ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
