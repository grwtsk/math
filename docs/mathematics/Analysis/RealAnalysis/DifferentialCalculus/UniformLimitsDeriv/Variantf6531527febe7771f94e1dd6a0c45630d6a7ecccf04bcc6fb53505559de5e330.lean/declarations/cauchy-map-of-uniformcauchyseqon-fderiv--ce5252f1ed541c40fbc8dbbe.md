# cauchy_map_of_uniformCauchySeqOn_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcdbde53-a4a4-c811-f59a-460442f932e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73cefc3a-3275-97cc-cedd-5c0b82525f67",
  "kind": "theorem",
  "lexical_name": "cauchy_map_of_uniformCauchySeqOn_fderiv",
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
  "slug": "cauchy-map-of-uniformcauchyseqon-fderiv--ce5252f1ed541c40fbc8dbbe",
  "source": {
    "blob": "98bee4e5dc8eb57cbd2486e201e26a0df912a9d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 230,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce5252f1ed541c40fbc8dbbe42a668e8810dd9ad8da917c846e7150eb801d039",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73cefc3a-3275-97cc-cedd-5c0b82525f67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchy_map_of_uniformCauchySeqOn_fderiv {s : Set E} (hs : IsOpen s) (h's : IsPreconnected s)
    (hf' : UniformCauchySeqOn f' l s) (hf : ∀ n : ι, ∀ y : E, y ∈ s → HasFDerivAt (f n) (f' n y) y)
    {x₀ x : E} (hx₀ : x₀ ∈ s) (hx : x ∈ s) (hfg : Cauchy (map (fun n => f n x₀) l)) :
    Cauchy (map (fun n => f n x) l) := by
  have : NeBot l := (cauchy_map_iff.1 hfg).1
  let t := { y | y ∈ s ∧ Cauchy (map (fun n => f n y) l) }
  suffices H : s ⊆ t from (H hx).2
  have A : ∀ x ε, x ∈ t → Metric.ball x ε ⊆ s → Metric.ball x ε ⊆ t := fun x ε xt hx y hy =>
    ⟨hx hy,
      (uniformCauchySeqOn_ball_of_fderiv (hf'.mono hx) (fun n y hy => hf n y (hx hy))
            xt.2).cauchy_map
        hy⟩
  have open_t : IsOpen t := by
    rw [Metric.isOpen_iff]
    intro x hx
    rcases Metric.isOpen_iff.1 hs x hx.1 with ⟨ε, εpos, hε⟩
    exact ⟨ε, εpos, A x ε hx hε⟩
  have st_nonempty : (s ∩ t).Nonempty := ⟨x₀, hx₀, ⟨hx₀, hfg⟩⟩
  suffices H : closure t ∩ s ⊆ t from h's.subset_of_closure_inter_subset open_t st_nonempty H
  rintro x ⟨xt, xs⟩
  obtain ⟨ε, εpos, hε⟩ : ∃ (ε : ℝ), ε > 0 ∧ Metric.ball x ε ⊆ s := Metric.isOpen_iff.1 hs x xs
  obtain ⟨y, yt, hxy⟩ : ∃ (y : E), y ∈ t ∧ dist x y < ε / 2 :=
    Metric.mem_closure_iff.1 xt _ (half_pos εpos)
  have B : Metric.ball y (ε / 2) ⊆ Metric.ball x ε := by
    apply Metric.ball_subset_ball'; rw [dist_comm]; linarith
  exact A y (ε / 2) yt (B.trans hε) (Metric.mem_ball.2 hxy)

/-- If `f_n → g` pointwise and the derivatives `(f_n)' → h` _uniformly_ converge, then
in fact for a fixed `y`, the difference quotients `‖z - y‖⁻¹ • (f_n z - f_n y)` converge
_uniformly_ to `‖z - y‖⁻¹ • (g z - g y)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variantf6531527febe7771f94e1dd6a0c45630d6a7ecccf04bcc6fb53505559de5e330.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98bee4e5dc8eb57cbd2486e201e26a0df912a9d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
