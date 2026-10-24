# mdifferentiableAt_localFrameCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be26f66a-5d79-f3f2-1d58-fbaaa4179a2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb71f749-6bc9-640b-a116-24966e05fa26",
  "kind": "lemma",
  "lexical_name": "mdifferentiableAt_localFrameCoeff",
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
  "slug": "mdifferentiableat-localframecoeff--f0fd8790496a1a8ac819549a",
  "source": {
    "blob": "8faf46c7aa6cf751428e604e21bad1cbbe246750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 551,
    "path": "GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0fd8790496a1a8ac819549a8fb6157e2111f39305d8e2ab8442e752009e1052",
  "verification": {
    "reference": "docs/verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb71f749-6bc9-640b-a116-24966e05fa26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mdifferentiableAt_localFrameCoeff
    (hxe : x ∈ e.baseSet) (hs : MDiffAt (T% s) x) (i : ι) :
    MDiffAt ((LinearMap.piApply (e.localFrameCoeff I b i)) s) x := by
  -- This boils down to computing the frame coefficients in a local trivialisation.
  -- step 1: on `e.baseSet`, we know the coefficient very well
  let aux := fun x ↦ b.repr (e ((T% s) x)).2 i
  -- Since `e.baseSet` is open, this is sufficient.
  suffices MDiffAt aux x by
    apply this.congr_of_eventuallyEq
    apply eventuallyEq_of_mem (s := e.baseSet) (by simp [e.open_baseSet.mem_nhds hxe])
    intro y hy
    simp [aux, e.localFrameCoeff_eq_coeff hy]
  simp only [aux]
  -- step 2: `s` read in trivialization `e` is differentiable
  have h₁ : MDiffAt (fun x ↦ (e ((T% s) x)).2) x := by
    simpa using (e.mdifferentiableAt_section_iff I s hxe).1 hs
  -- step 3: `b.repr` is a linear map, so the composition is smooth
  let breprl : F →ₗ[𝕜] 𝕜 :=
    { toFun v := b.repr v i
      map_add' m m' := by simp
      map_smul' m x := by simp }
  have : MDifferentiableAt 𝓘(𝕜, F) 𝓘(𝕜) breprl.toContinuousLinearMap (e ((T% s) x)).2 :=
    mdifferentiableAt_iff_differentiableAt.mpr <| by fun_prop
  exact this.comp x h₁

@[deprecated (since := "2026-07-26")]
alias mdifferentiableAt_localFrame_coeff := mdifferentiableAt_localFrameCoeff

/-- If `s` is differentiable on `t ⊆ e.baseSet`, so is its coefficient `b.localFrameCoeff e i`
in the local frame induced by `e` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalFrame/Varianta99b2545f22b71aacfaecf7a6488dd2ec40d3252de331cabb781c73c2779436e.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8faf46c7aa6cf751428e604e21bad1cbbe246750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
