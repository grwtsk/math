# WeakPseudoEMetricSpace.IsInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed7d1f9852f9fa69a01d4844813787e11de1a1f475cb4575b52e68725c9068d0",
  "kind": "abbrev",
  "lexical_name": "WeakPseudoEMetricSpace.IsInducing",
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
  "slug": "weakpseudoemetricspace-isinducing--9148951ca70e32adb3621252",
  "source": {
    "blob": "9e1adc511024766f5e38859b9c7daf25e454da0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 422,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9148951ca70e32adb3621252339b006bfc69a007bf11c21122f9bf02b784b3ba",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed7d1f9852f9fa69a01d4844813787e11de1a1f475cb4575b52e68725c9068d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev WeakPseudoEMetricSpace.IsInducing {α β : Type*} [e : TopologicalSpace α]
  [n : TopologicalSpace β] {f : α → β} (hf : IsInducing f) (m : WeakPseudoEMetricSpace β) :
    WeakPseudoEMetricSpace α where
  edist := fun x y ↦ edist (f x) (f y)
  edist_self x := edist_self (f x)
  edist_comm x y := edist_comm (f x) (f y)
  edist_triangle x y z := edist_triangle (f x) (f y) (f z)
  topology_le := by
    let hα := PseudoEMetricSpace.ofEDist (fun x y ↦ edist (f x) (f y))
      (fun x ↦ edist_self (f x)) (fun x y ↦ edist_comm (f x) (f y))
      (fun x y z ↦ edist_triangle (f x) (f y) (f z))
    let hβ := PseudoEMetricSpace.ofEDist m.edist edist_self edist_comm edist_triangle
    rw [(isInducing_iff f).mp hf]
    refine (continuous_le_rng m.topology_le ?_).le_induced
    refine @Continuous.mk α β hα.toUniformSpace.toTopologicalSpace
      hβ.toUniformSpace.toTopologicalSpace f fun s hs ↦ ?_
    rw [EMetric.isOpen_iff] at hs ⊢
    intro x (hx : f x ∈ s)
    obtain ⟨ε, hε, hεs⟩ := hs (f x) hx
    exact ⟨ε, hε, fun y hy ↦ hεs hy⟩
  topology_eq_on_restrict x r := by
    obtain ⟨u, hu, uy⟩ := m.topology_eq_on_restrict (f x) r
    rw [(isInducing_iff f).mp hf]
    exact ⟨f ⁻¹' u, isOpen_induced hu, by aesop (add simp [Set.ext_iff])⟩

/-- Weak pseudo-emetric space instance on subsets of weak pseudo-emetric spaces -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1adc511024766f5e38859b9c7daf25e454da0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
