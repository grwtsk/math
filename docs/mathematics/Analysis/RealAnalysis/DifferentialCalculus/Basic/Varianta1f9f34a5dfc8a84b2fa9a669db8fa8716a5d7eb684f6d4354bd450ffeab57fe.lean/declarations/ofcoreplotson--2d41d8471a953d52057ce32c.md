# ofCorePlotsOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:399261e508f41cdd2b811ce72938a46e1ff510f74d9cab35394a35c420c4fc40",
  "kind": "def",
  "lexical_name": "ofCorePlotsOn",
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
  "slug": "ofcoreplotson--2d41d8471a953d52057ce32c",
  "source": {
    "blob": "ba74d8bddcc80b3393f1db17bd4bb92781dfb32e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d41d8471a953d52057ce32cd7700faaace6196f2cb2276649a20b3fda30428d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:399261e508f41cdd2b811ce72938a46e1ff510f74d9cab35394a35c420c4fc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCorePlotsOn {X : Type*} (d : DiffeologicalSpace.CorePlotsOn X) :
    DiffeologicalSpace X where
  plots _ := {p | d.isPlot p}
  constant_plots _ := d.isPlot_const _
  plot_reparam hp hf := d.isPlotOn_univ.mp <|
    d.isPlotOn_reparam _ (Set.mapsTo_univ _ _) (d.isPlotOn_univ.mpr hp) hf.contDiffOn
  locality {n p} h := by
    refine d.isPlotOn_univ.mp <| d.locality _ fun x _ ↦ ?_
    let ⟨u, hu, hxu, hu'⟩ := h x
    let ⟨ε, hε, hε'⟩ := Metric.isOpen_iff.mp hu x hxu
    have h : d.isPlot (p ∘ OpenPartialHomeomorph.univBall x ε) := hu'
      (f := OpenPartialHomeomorph.univBall x ε)
      (fun x' ↦ by
        replace h := (OpenPartialHomeomorph.univBall x ε).map_source (x := x')
        rw [OpenPartialHomeomorph.univBall_target x hε] at h
        aesop)
      OpenPartialHomeomorph.contDiff_univBall
    have h' := d.isPlotOn_reparam (Metric.isOpen_ball) (Set.mapsTo_univ _ _)
      (d.isPlotOn_univ.mpr h) (OpenPartialHomeomorph.contDiffOn_univBall_symm (c := x) (r := ε))
    refine ⟨_, Metric.isOpen_ball, Metric.mem_ball_self hε, (d.isPlotOn_congr _ ?_).mp h'⟩
    rw [Function.comp_assoc, ← OpenPartialHomeomorph.coe_trans]
    apply Set.EqOn.comp_left
    convert! (OpenPartialHomeomorph.symm_trans_self (OpenPartialHomeomorph.univBall x ε)).2
    simp [OpenPartialHomeomorph.univBall_target x hε]
  dTopology := d.dTopology
  isOpen_iff_preimages_plots := d.isOpen_iff_preimages_plots

end DiffeologicalSpace

namespace Diffeology

/-- Technical condition saying that the topology on a type agrees with the D-topology.
Necessary because the D-topologies on for example products and subspaces don't agree with
the product and subspace topologies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba74d8bddcc80b3393f1db17bd4bb92781dfb32e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
