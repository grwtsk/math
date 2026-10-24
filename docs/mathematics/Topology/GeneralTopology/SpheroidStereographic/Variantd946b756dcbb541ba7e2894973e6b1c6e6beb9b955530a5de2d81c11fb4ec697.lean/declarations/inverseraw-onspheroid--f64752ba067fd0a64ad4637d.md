# inverseRaw_onSpheroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72e021039990e072da279bbfed404bfb08e00e71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7973cabe-a519-0e12-f686-956dfd42a1a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5954b41e-a94f-b6ae-6f54-a25f8bc3ae25",
  "kind": "theorem",
  "lexical_name": "inverseRaw_onSpheroid",
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
  "slug": "inverseraw-onspheroid--f64752ba067fd0a64ad4637d",
  "source": {
    "blob": "72e021039990e072da279bbfed404bfb08e00e71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f64752ba067fd0a64ad4637d683935f69ceec92283aca80994a027ada4850ea3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5954b41e-a94f-b6ae-6f54-a25f8bc3ae25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseRaw_onSpheroid {a c : ℝ} (ha : 0 < a) (hc : 0 < c)
    (u : EuclideanSpace ℝ ι) :
    OnSpheroid a c (inverseRaw a c u) := by
  have hdpos := inverseDenominator_pos (ι := ι) ha u
  have hd : inverseDenominator a u ≠ 0 := hdpos.ne'
  have hcoeff : 0 ≤ (2 * a ^ 2) / inverseDenominator a u := by
    positivity
  unfold OnSpheroid inverseRaw
  dsimp only
  rw [norm_smul, Real.norm_of_nonneg hcoeff]
  field_simp [ha.ne', hc.ne', hd]
  unfold inverseDenominator
  ring

/-- The inverse formula never reaches the north pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72e021039990e072da279bbfed404bfb08e00e71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
