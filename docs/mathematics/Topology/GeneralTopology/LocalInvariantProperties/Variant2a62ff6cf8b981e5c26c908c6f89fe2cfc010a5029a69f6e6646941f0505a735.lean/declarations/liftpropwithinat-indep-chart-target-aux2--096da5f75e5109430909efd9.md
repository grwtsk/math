# liftPropWithinAt_indep_chart_target_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f019b85-3125-d96a-d85d-ba12ce579e69",
  "kind": "theorem",
  "lexical_name": "liftPropWithinAt_indep_chart_target_aux2",
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
  "slug": "liftpropwithinat-indep-chart-target-aux2--096da5f75e5109430909efd9",
  "source": {
    "blob": "f5331c9ae9bf2531410ac53149121976f8da9d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096da5f75e5109430909efd92a16d0616488bd7eaffa6c65a0ca629d6c0e1013",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f019b85-3125-d96a-d85d-ba12ce579e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropWithinAt_indep_chart_target_aux2 (g : H → M') {x : H} {s : Set H}
    (hf : f ∈ G'.maximalAtlas M')
    (xf : g x ∈ f.source) (hgs : ContinuousWithinAt g s x) :
    P ((chartAt H' (g x)) ∘ g) s x ↔ P (f ∘ g) s x := by
  have hcont : ContinuousWithinAt ((chartAt H' (g x)) ∘ g) s x :=
    ((chartAt H' (g x)).continuousAt (by simp)).comp_continuousWithinAt hgs
  rw [← hG.left_invariance (compatible_of_mem_maximalAtlas_right (x := g x) hf) hcont
      (by simp [xf, mfld_simps])]
  refine hG.congr_iff_nhdsWithin ?_ (by simp)
  exact (hgs.eventually <| (chartAt H' (g x)).eventually_left_inverse
    (mem_chart_source H' (g x))).mono fun y ↦ congr_arg f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5331c9ae9bf2531410ac53149121976f8da9d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
