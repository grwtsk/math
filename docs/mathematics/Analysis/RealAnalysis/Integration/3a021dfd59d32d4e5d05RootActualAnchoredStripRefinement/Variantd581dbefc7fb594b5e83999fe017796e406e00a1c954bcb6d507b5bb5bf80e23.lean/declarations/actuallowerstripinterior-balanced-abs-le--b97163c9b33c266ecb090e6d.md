# actualLowerStripInterior_balanced_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4027b3fd-b8ac-bfe7-4185-d06f869ce3e7",
  "kind": "theorem",
  "lexical_name": "actualLowerStripInterior_balanced_abs_le",
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
  "slug": "actuallowerstripinterior-balanced-abs-le--b97163c9b33c266ecb090e6d",
  "source": {
    "blob": "4e0c1870d9be99c3f92939044028641caf660a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97163c9b33c266ecb090e6d1806f133464bd2d9cdb51d66909afdb8a7761dc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4027b3fd-b8ac-bfe7-4185-d06f869ce3e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerStripInterior_balanced_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |actualLowerStripInterior A offset w| ≤
      32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) := by
  have hp : Real.exp (w / 2) * Real.exp (-w / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  calc
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (1 - Real.exp (-w / 2)) * (Real.exp (w / 2) - 1) :=
      actualLowerStripInterior_anchored_abs_le hA hw
    _ = _ := by
      nlinarith [congrArg (fun x : ℝ =>
        32 * (Real.log 4 + 4 + Real.log 2 + |offset|) * x) hp]

end
end FormalResearch.RiemannHypothesis.RootActualAnchoredStripRefinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0c1870d9be99c3f92939044028641caf660a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
