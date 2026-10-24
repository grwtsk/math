# mconv_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "351dbf2acb09384ff55c47c28d0cc5ffac1097b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bccd75ff-6ea6-f02b-0a2a-a160d70b3a3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e4f7aa0-fb16-0132-40c0-2f64972fcc0a",
  "kind": "theorem",
  "lexical_name": "mconv_absolutelyContinuous",
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
  "slug": "mconv-absolutelycontinuous--c1dd9fbb8f468fe1c72410ce",
  "source": {
    "blob": "351dbf2acb09384ff55c47c28d0cc5ffac1097b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1dd9fbb8f468fe1c72410cee4188367b15888a3500caca3637a32cbe0362ba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e4f7aa0-fb16-0132-40c0-2f64972fcc0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mconv_absolutelyContinuous [MeasurableMul₂ M] {μ ν ρ : Measure M}
    [IsMulLeftInvariant ρ] [SFinite ν] (hν : ν ≪ ρ) : μ ∗ₘ ν ≪ ρ := by
  refine AbsolutelyContinuous.mk (fun s hs h ↦ ?_)
  rw [← lintegral_indicator_one hs, lintegral_mconv (by measurability)]
  conv in s.indicator 1 (_ * _) => change s.indicator 1 ((fun y ↦ x * y) y)
  simp only [← Set.indicator_comp_right, Pi.one_comp]
  conv in ∫⁻ _, _ ∂ν =>
    rw [lintegral_indicator_one (by apply MeasurableSet.preimage hs (by fun_prop))]
  have h0 (x : M) : ν (HMul.hMul x ⁻¹' s) = 0 := by
    apply hν
    rw [← map_apply (by fun_prop) hs, IsMulLeftInvariant.map_mul_left_eq_self, h]
  simp [h0]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351dbf2acb09384ff55c47c28d0cc5ffac1097b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
