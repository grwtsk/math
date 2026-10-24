# condIndepFun_iff_map_prod_eq_prod_map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:927db128-59c1-5c98-7617-e6f71e167eec",
  "kind": "theorem",
  "lexical_name": "condIndepFun_iff_map_prod_eq_prod_map_map",
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
  "slug": "condindepfun-iff-map-prod-eq-prod-map-map--a4619bdd65d8d66080e002a9",
  "source": {
    "blob": "8943eee9b4e0db33c8e019ea8f2dfb1f805d1890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 806,
    "line": 793,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4619bdd65d8d66080e002a9488b061fafb0a2fc4dc37e3d30d385bc8ec13c82",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:927db128-59c1-5c98-7617-e6f71e167eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 793–806.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condIndepFun_iff_map_prod_eq_prod_map_map
    {mβ : MeasurableSpace β} {mβ' : MeasurableSpace β'} [CountableOrCountablyGenerated Ω (β × β')]
    (hf : Measurable f) (hg : Measurable g) :
    CondIndepFun m' hm' f g μ
      ↔ (condExpKernel μ m').map (fun ω ↦ (f ω, g ω))
        =ᵐ[μ.trim hm'] (condExpKernel μ m').map f ×ₖ (condExpKernel μ m').map g := by
  rw [condIndepFun_iff_compProd_map_prod_eq_compProd_prod_map_map hf hg, ← Kernel.compProd_eq_iff]

/-- Two random variables are conditionally independent with respect to `m'` iff the law of
`(id, f, g)` under `μ`, in which the identity is to the space with σ-algebra `m'`, can be written
as a product involving the conditional expectations of `f` and `g` given `m'`.

For a random variable `f`, `(condExpKernel μ m').map f` is the law of the conditional expectation
of `f` given `m'`: almost surely, `(condExpKernel μ m').map f ω s = μ⟦f ⁻¹' s | m'⟧ ω`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean#L793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8943eee9b4e0db33c8e019ea8f2dfb1f805d1890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
