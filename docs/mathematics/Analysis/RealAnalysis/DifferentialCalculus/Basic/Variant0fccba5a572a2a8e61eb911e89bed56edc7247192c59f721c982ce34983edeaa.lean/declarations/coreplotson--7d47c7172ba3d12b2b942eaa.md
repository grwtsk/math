# CorePlotsOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6bc12202e354716f73c8c35a1cc4a48d254fba5c5ede6577fa53994546bc955",
  "kind": "structure",
  "lexical_name": "CorePlotsOn",
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
  "slug": "coreplotson--7d47c7172ba3d12b2b942eaa",
  "source": {
    "blob": "143350f1161a5df900c3c0650abcfcaf2001d809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 284,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant0fccba5a572a2a8e61eb911e89bed56edc7247192c59f721c982ce34983edeaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d47c7172ba3d12b2b942eaa04fadea525a0e94b532428390ad05982619df3ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant0fccba5a572a2a8e61eb911e89bed56edc7247192c59f721c982ce34983edeaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6bc12202e354716f73c8c35a1cc4a48d254fba5c5ede6577fa53994546bc955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CorePlotsOn (X : Type*) where
  /-- The predicate determining which maps `u → X` with `u : Set (EuclideanSpace ℝ (Fin n))` open
  are plots. -/
  isPlotOn {n : ℕ} {u : Set 𝔼ⁿ} (hu : IsOpen u) : (𝔼ⁿ → X) → Prop
  isPlotOn_congr {n : ℕ} {u : Set 𝔼ⁿ} (hu : IsOpen u) {p q : 𝔼ⁿ → X} (h : Set.EqOn p q u) :
    isPlotOn hu p ↔ isPlotOn hu q
  /-- The predicate that the diffeology built from this structure will use. Can be overwritten
  to allow for better definitional equalities. -/
  isPlot {n : ℕ} : (𝔼ⁿ → X) → Prop := fun p ↦ isPlotOn isOpen_univ p
  isPlotOn_univ {n : ℕ} {p : 𝔼ⁿ → X} :
    isPlotOn isOpen_univ p ↔ isPlot p := by simp
  isPlot_const {n : ℕ} (x : X) : isPlot fun (_ : 𝔼ⁿ) ↦ x
  isPlotOn_reparam {n m : ℕ} {u : Set 𝔼ⁿ} {v : Set 𝔼ᵐ} {hu : IsOpen u} (hv : IsOpen v)
    {p : 𝔼ⁿ → X} {f : 𝔼ᵐ → 𝔼ⁿ} (h : Set.MapsTo f v u) (hp : isPlotOn hu p)
    (hf : ContDiffOn ℝ ∞ f v) : isPlotOn hv (p ∘ f)
  /-- The locality axiom of diffeologies, phrased in terms of `isPlotOn`. -/
  locality {n : ℕ} {u : Set 𝔼ⁿ} (hu : IsOpen u) {p : 𝔼ⁿ → X}
    (hp : ∀ x ∈ u, ∃ (v : Set _) (hv : IsOpen v), x ∈ v ∧ isPlotOn hv p) : isPlotOn hu p
  /-- The D-topology that the diffeology built from this structure will use. Can be overwritten
  to allow for better definitional equalities. -/
  dTopology : TopologicalSpace X := {
    IsOpen u := ∀ ⦃n : ℕ⦄, ∀ p : 𝔼ⁿ → X, isPlot p → IsOpen (p ⁻¹' u)
    isOpen_univ := fun _ _ _ ↦ isOpen_univ
    isOpen_inter := fun _ _ hs ht _ p hp ↦
      Set.preimage_inter.symm ▸ (IsOpen.inter (hs p hp) (ht p hp))
    isOpen_sUnion := fun _ hs _ p hp ↦
      Set.preimage_sUnion ▸ isOpen_biUnion fun u hu ↦ hs u hu p hp }
  isOpen_iff_preimages_plots {u : Set X} : dTopology.IsOpen u ↔
    ∀ {n : ℕ}, ∀ p : 𝔼ⁿ → X, isPlot p → IsOpen (p ⁻¹' u) := by rfl

/-- Constructs a diffeology from plots defined on open subsets or ℝⁿ rather than ℝⁿ itself,
organised in the form of the auxiliary `CorePlotsOn` structure.
This is more involved in most regards, but also often makes it quite a lot easier to prove
the locality condition. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant0fccba5a572a2a8e61eb911e89bed56edc7247192c59f721c982ce34983edeaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant0fccba5a572a2a8e61eb911e89bed56edc7247192c59f721c982ce34983edeaa.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `143350f1161a5df900c3c0650abcfcaf2001d809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
