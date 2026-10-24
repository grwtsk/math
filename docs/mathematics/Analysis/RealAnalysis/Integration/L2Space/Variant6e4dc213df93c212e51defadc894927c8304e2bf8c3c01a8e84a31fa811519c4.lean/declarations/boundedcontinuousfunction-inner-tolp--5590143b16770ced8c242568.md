# BoundedContinuousFunction.inner_toLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6845ab0e-0f89-703e-d372-7c39bc7a00e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ce8ba36-a421-6e30-a41e-29a958cacb1d",
  "kind": "theorem",
  "lexical_name": "BoundedContinuousFunction.inner_toLp",
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
  "slug": "boundedcontinuousfunction-inner-tolp--5590143b16770ced8c242568",
  "source": {
    "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 274,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5590143b16770ced8c242568944fb26caf3fd6272aa9d5ba5f4920d9cacc22f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ce8ba36-a421-6e30-a41e-29a958cacb1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BoundedContinuousFunction.inner_toLp (f g : α →ᵇ 𝕜) :
    ⟪BoundedContinuousFunction.toLp 2 μ 𝕜 f,
        BoundedContinuousFunction.toLp 2 μ 𝕜 g⟫ =
      ∫ x, g x * conj (f x) ∂μ := by
  apply integral_congr_ae
  have hf_ae := f.coeFn_toLp 2 μ 𝕜
  have hg_ae := g.coeFn_toLp 2 μ 𝕜
  filter_upwards [hf_ae, hg_ae] with _ hf hg
  rw [hf, hg]
  simp

variable [CompactSpace α]

/-- For continuous functions `f`, `g` on a compact, finite-measure topological space `α`, the L^2
inner product is the integral of their pointwise inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74a7fd4d39c136e90feb59319688cf96b27daf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
