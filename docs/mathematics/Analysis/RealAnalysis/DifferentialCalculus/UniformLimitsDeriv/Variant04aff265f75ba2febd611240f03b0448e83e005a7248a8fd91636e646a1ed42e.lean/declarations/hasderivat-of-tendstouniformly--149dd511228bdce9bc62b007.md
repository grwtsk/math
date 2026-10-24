# hasDerivAt_of_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c3fc789-7e12-0601-9617-64d80d974389",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1eda01d-4137-0d5a-a8ba-3be6315ad00d",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_of_tendstoUniformly",
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
  "slug": "hasderivat-of-tendstouniformly--149dd511228bdce9bc62b007",
  "source": {
    "blob": "02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 558,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149dd511228bdce9bc62b007f9b4a842f6a8c7fd7a5d4bf20886b3f811a93686",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1eda01d-4137-0d5a-a8ba-3be6315ad00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_of_tendstoUniformly [NeBot l] (hf' : TendstoUniformly f' g' l)
    (hf : ∀ᶠ n in l, ∀ x : 𝕜, HasDerivAt (f n) (f' n x) x)
    (hfg : ∀ x : 𝕜, Tendsto (fun n => f n x) l (𝓝 (g x))) : ∀ x : 𝕜, HasDerivAt g (g' x) x := by
  intro x
  have hf : ∀ᶠ n in l, ∀ x : 𝕜, x ∈ Set.univ → HasDerivAt (f n) (f' n x) x := by
    filter_upwards [hf]with n h x _ using h x
  have hfg : ∀ x : 𝕜, x ∈ Set.univ → Tendsto (fun n => f n x) l (𝓝 (g x)) := by simp [hfg]
  have hf' : TendstoUniformlyOn f' g' l Set.univ := by rwa [tendstoUniformlyOn_univ]
  exact hasDerivAt_of_tendstoUniformlyOn isOpen_univ hf' hf hfg x (Set.mem_univ x)
#align has_deriv_at_of_tendsto_uniformly hasDerivAt_of_tendstoUniformly

end deriv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant04aff265f75ba2febd611240f03b0448e83e005a7248a8fd91636e646a1ed42e.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f0ab0d1bf8a64b632f46baaf0433dd90d24e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
