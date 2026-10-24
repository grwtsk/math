# _root_.ContinuousLinearMap.toBoundedAdditiveMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4c4cb14a2ca8e15fbd87502f7579f782e023e3c0dcca5201141651afb1bf732",
  "kind": "def",
  "lexical_name": "_root_.ContinuousLinearMap.toBoundedAdditiveMeasure",
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
  "slug": "root-continuouslinearmap-toboundedadditivemeasure--0f34f24364c07984e7812775",
  "source": {
    "blob": "82d4373ee90daf79bd0c2954b8a60cc96f575818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 391,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f34f24364c07984e7812775d8ef05d6c0b1e12662ca6b7a82f029f7937d79fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4c4cb14a2ca8e15fbd87502f7579f782e023e3c0dcca5201141651afb1bf732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.ContinuousLinearMap.toBoundedAdditiveMeasure [TopologicalSpace α] [DiscreteTopology α]
    (f : (α →ᵇ ℝ) →L[ℝ] ℝ) : BoundedAdditiveMeasure α where
  toFun s := f (ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s))
  additive' s t hst := by
    have :
      ofNormedAddCommGroupDiscrete (indicator (s ∪ t) 1) 1 (norm_indicator_le_one _) =
        ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s) +
          ofNormedAddCommGroupDiscrete (indicator t 1) 1 (norm_indicator_le_one t) := by
      ext x; simp [indicator_union_of_disjoint hst]
    rw [this, f.map_add]
  exists_bound :=
    ⟨‖f‖, fun s => by
      have I :
        ‖ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s)‖ ≤ 1 := by
        apply norm_ofNormedAddCommGroup_le _ zero_le_one
      apply le_trans (f.le_opNorm _)
      simpa using mul_le_mul_of_nonneg_left I (norm_nonneg f)⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d4373ee90daf79bd0c2954b8a60cc96f575818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
