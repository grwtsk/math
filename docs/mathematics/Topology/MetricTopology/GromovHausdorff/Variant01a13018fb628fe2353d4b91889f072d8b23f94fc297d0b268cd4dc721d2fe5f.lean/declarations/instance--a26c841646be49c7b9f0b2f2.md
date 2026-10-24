# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e344bc16423a23e17a334b817d19331c18ddce68a8ae2cd02f7e893fd0cd508",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a26c841646be49c7b9f0b2f2",
  "source": {
    "blob": "b37c224e2b9f34b621e69661c2dab552b520bc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1016,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a26c841646be49c7b9f0b2f25a460b105272fc117b098a4ff03faa7497569025",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e344bc16423a23e17a334b817d19331c18ddce68a8ae2cd02f7e893fd0cd508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1016–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteSpace GHSpace := by
  set d := fun n : ℕ ↦ ((1 : ℝ) / 2) ^ n
  have : ∀ n : ℕ, 0 < d n := fun _ ↦ by positivity
  -- start from a sequence of nonempty compact metric spaces within distance `1/2^n` of each other
  refine' Metric.complete_of_convergent_controlled_sequences d this fun u hu => _
  -- `X n` is a representative of `u n`
  let X n := (u n).Rep
  -- glue them together successively in an optimal way, getting a sequence of metric spaces `Y n`
  let Y := auxGluing X
  -- this equality is true by definition but Lean unfolds some defs in the wrong order
  have E :
    ∀ n : ℕ,
      GlueSpace (Y n).isom (isometry_optimalGHInjl (X n) (X (n + 1))) = (Y (n + 1)).Space :=
    fun n => by dsimp only [auxGluing]; rfl
  let c n := cast (E n)
  have ic : ∀ n, Isometry (c n) := fun n x y => by dsimp only [auxGluing]; exact rfl
  -- there is a canonical embedding of `Y n` in `Y (n+1)`, by construction
  let f : ∀ n, (Y n).Space → (Y (n + 1)).Space := fun n =>
    c n ∘ toGlueL (Y n).isom (isometry_optimalGHInjl (X n) (X n.succ))
  have I : ∀ n, Isometry (f n) := fun n => (ic n).comp (toGlueL_isometry _ _)
  -- consider the inductive limit `Z0` of the `Y n`, and then its completion `Z`
  let Z0 := Metric.InductiveLimit I
  let Z := UniformSpace.Completion Z0
  let Φ := toInductiveLimit I
  let coeZ := ((↑) : Z0 → Z)
  -- let `X2 n` be the image of `X n` in the space `Z`
  let X2 n := range (coeZ ∘ Φ n ∘ (Y n).embed)
  have isom : ∀ n, Isometry (coeZ ∘ Φ n ∘ (Y n).embed) := by
    intro n
    refine' UniformSpace.Completion.coe_isometry.comp _
    exact (toInductiveLimit_isometry _ _).comp (Y n).isom
  -- The Hausdorff distance of `X2 n` and `X2 (n+1)` is by construction the distance between
  -- `u n` and `u (n+1)`, therefore bounded by `1/2^n`
  have X2n : ∀ n, X2 n =
    range ((coeZ ∘ Φ n.succ ∘ c n ∘ toGlueR (Y n).isom
      (isometry_optimalGHInjl (X n) (X n.succ))) ∘ optimalGHInjl (X n) (X n.succ)) := by
    intro n
    change X2 n = range (coeZ ∘ Φ n.succ ∘ c n ∘
      toGlueR (Y n).isom (isometry_optimalGHInjl (X n) (X n.succ)) ∘
      optimalGHInjl (X n) (X n.succ))
    simp only --[X2, Φ]
    rw [← toInductiveLimit_commute I]
    simp only --[f]
    rw [← toGlue_commute]
    rfl
  -- simp_rw [range_comp] at X2n
  have X2nsucc : ∀ n, X2 n.succ =
      range ((coeZ ∘ Φ n.succ ∘ c n ∘ toGlueR (Y n).isom
        (isometry_optimalGHInjl (X n) (X n.succ))) ∘ optimalGHInjr (X n) (X n.succ)) := by
    intro n
    rfl
  -- simp_rw [range_comp] at X2nsucc
  have D2 : ∀ n, hausdorffDist (X2 n) (X2 n.succ) < d n := fun n ↦ by
    rw [X2n n, X2nsucc n, range_comp, range_comp, hausdorffDist_image,
      hausdorffDist_optimal, ← dist_ghDist]
    · exact hu n n n.succ (le_refl n) (le_succ n)
    · apply UniformSpace.Completion.coe_isometry.comp _
      exact (toInductiveLimit_isometry _ _).comp ((ic n).comp (toGlueR_isometry _ _))
  -- consider `X2 n` as a member `X3 n` of the type of nonempty compact subsets of `Z`, which
  -- is a metric space
  let X3 : ℕ → NonemptyCompacts Z := fun n =>
    ⟨⟨X2 n, isCompact_range (isom n).continuous⟩, range_nonempty _⟩
  -- `X3 n` is a Cauchy sequence by construction, as the successive distances are
  -- bounded by `(1/2)^n`
  have : CauchySeq X3 := by
    refine' cauchySeq_of_le_geometric (1 / 2) 1 (by norm_num) fun n => _
    rw [one_mul]
    exact le_of_lt (D2 n)
  -- therefore, it converges to a limit `L`
  rcases cauchySeq_tendsto_of_complete this with ⟨L, hL⟩
  -- By construction, the image of `X3 n` in the Gromov-Hausdorff space is `u n`.
  have : ∀ n, (NonemptyCompacts.toGHSpace ∘ X3) n = u n := by
    intro n
    rw [Function.comp_apply, NonemptyCompacts.toGHSpace, ← (u n).toGHSpace_rep,
      toGHSpace_eq_toGHSpace_iff_isometryEquiv]
    constructor
    convert(isom n).isometryEquivOnRange.symm
  -- the images of `X3 n` in the Gromov-Hausdorff space converge to the image of `L`
  -- so the images of `u n` converge to the image of `L` as well
  use L.toGHSpace
  apply Filter.Tendsto.congr this
  refine' Tendsto.comp _ hL
  apply toGHSpace_continuous.tendsto

end Complete

--section
end GromovHausdorff

--namespace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant01a13018fb628fe2353d4b91889f072d8b23f94fc297d0b268cd4dc721d2fe5f.lean#L1016).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37c224e2b9f34b621e69661c2dab552b520bc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
