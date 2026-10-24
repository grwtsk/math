# SurgeryCorrelationControl.realizedDecomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36f68c85-3a04-54ab-9813-a6dc09e4ffeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7040fb9-a723-ea58-bea4-e192a462d438",
  "kind": "theorem",
  "lexical_name": "SurgeryCorrelationControl.realizedDecomposition",
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
  "slug": "surgerycorrelationcontrol-realizeddecomposition--39e27e65578e1f4ff3e74b07",
  "source": {
    "blob": "e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 430,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e27e65578e1f4ff3e74b07e76fae260c4b3acd9b9e93297ce3f48c8d87e512",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7040fb9-a723-ea58-bea4-e192a462d438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SurgeryCorrelationControl.realizedDecomposition
    {N : ℕ} {A : Type*} [CommRing A]
    {base : CubicFrobeniusRewriteBase N A}
    (parent : TypeIISurgeryState N A base)
    (Child : Type*) [Fintype Child]
    (child : Child → TypeIISurgeryState N A base)
    (control : SurgeryCorrelationControl parent Child child)
    (x : ℕ) :
    base.realization (parent.universalPrefix x) =
      (∑ index : Child,
        base.realization ((child index).universalPrefix x)) +
          base.realization (control.surgeryResidual x) := by
  rw [control.universalDecomposition]
  simp

/-! ## Trichotomy predicates (uninhabited research boundary) -/

/-- A diffuse state has no cluster above the supplied concentration scale. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
