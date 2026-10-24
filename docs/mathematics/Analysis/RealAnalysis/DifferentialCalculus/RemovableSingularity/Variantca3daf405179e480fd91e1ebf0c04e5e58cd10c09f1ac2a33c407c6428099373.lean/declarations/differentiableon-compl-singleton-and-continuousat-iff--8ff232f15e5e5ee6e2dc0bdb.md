# differentiableOn_compl_singleton_and_continuousAt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9b7523-a2ec-0930-34b9-aa350aa98637",
  "kind": "theorem",
  "lexical_name": "differentiableOn_compl_singleton_and_continuousAt_iff",
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
  "slug": "differentiableon-compl-singleton-and-continuousat-iff--8ff232f15e5e5ee6e2dc0bdb",
  "source": {
    "blob": "04a35c71b68298502fd065199782b146800f958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ff232f15e5e5ee6e2dc0bdb04cc6747a918e854ecfa269d7a6904cedc6df4f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9b7523-a2ec-0930-34b9-aa350aa98637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableOn_compl_singleton_and_continuousAt_iff {f : ℂ → E} {s : Set ℂ} {c : ℂ}
    (hs : s ∈ 𝓝 c) :
    DifferentiableOn ℂ f (s \ {c}) ∧ ContinuousAt f c ↔ DifferentiableOn ℂ f s := by
  refine' ⟨_, fun hd => ⟨hd.mono (diff_subset _ _), (hd.differentiableAt hs).continuousAt⟩⟩
  rintro ⟨hd, hc⟩ x hx
  rcases eq_or_ne x c with (rfl | hne)
  · refine' (analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
      _ hc).differentiableAt.differentiableWithinAt
    refine' eventually_nhdsWithin_iff.2 ((eventually_mem_nhds.2 hs).mono fun z hz hzx => _)
    exact hd.differentiableAt (inter_mem hz (isOpen_ne.mem_nhds hzx))
  · simpa only [DifferentiableWithinAt, HasFDerivWithinAt, hne.nhdsWithin_diff_singleton] using
      hd x ⟨hx, hne⟩
#align complex.differentiable_on_compl_singleton_and_continuous_at_iff Complex.differentiableOn_compl_singleton_and_continuousAt_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a35c71b68298502fd065199782b146800f958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
