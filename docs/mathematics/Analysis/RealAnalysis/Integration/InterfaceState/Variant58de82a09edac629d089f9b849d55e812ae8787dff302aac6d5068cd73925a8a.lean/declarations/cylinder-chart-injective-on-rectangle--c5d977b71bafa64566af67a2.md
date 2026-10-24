# cylinder_chart_injective_on_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6434737a8a97063a26e42ce04f484355b4ef3a7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 698,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1922c02a-fd45-8e84-ccf3-722a53630204",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0455b4d-1360-c4db-1ef5-2dae4643be10",
  "kind": "theorem",
  "lexical_name": "cylinder_chart_injective_on_rectangle",
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
  "slug": "cylinder-chart-injective-on-rectangle--c5d977b71bafa64566af67a2",
  "source": {
    "blob": "6434737a8a97063a26e42ce04f484355b4ef3a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 717,
    "line": 698,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d977b71bafa64566af67a2204ffb332ab1e60406d6a168c1e0953394d476d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0455b4d-1360-c4db-1ef5-2dae4643be10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–717.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cylinder_chart_injective_on_rectangle : Set.InjOn cylinderChart parameterRectangle := by
  intro p hp q hq equal
  have hs := congrArg (fun x : Space => x 1) equal
  have hv := congrArg (fun x : Space => x 2) equal
  have hs' : Real.sin (p 0) = Real.sin (q 0) := by simpa [cylinderChart, axis] using hs
  have hv' : p 1 = q 1 := by simpa [cylinderChart, axis] using hv
  have hp' : p 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ p 0 := hp.1 0
    have hhigh : p 0 ≤ (1 / 2 : ℝ) := hp.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hq' : q 0 ∈ Set.Icc (-(Real.pi / 2)) (Real.pi / 2) := by
    have hlow : (-1 / 2 : ℝ) ≤ q 0 := hq.1 0
    have hhigh : q 0 ≤ (1 / 2 : ℝ) := hq.2 0
    constructor <;> linarith [Real.pi_gt_three]
  have hu := Real.injOn_sin hp' hq' hs'
  apply PiLp.ext
  intro i
  fin_cases i <;> assumption

/-- Both curvature evaluations use nonzero gradients and genuine level and normal derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6434737a8a97063a26e42ce04f484355b4ef3a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
