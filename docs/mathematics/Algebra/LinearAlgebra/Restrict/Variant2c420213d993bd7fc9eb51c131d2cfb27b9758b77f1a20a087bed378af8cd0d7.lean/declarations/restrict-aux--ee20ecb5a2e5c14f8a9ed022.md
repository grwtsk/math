# restrict_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7abaff2e-09e7-bde6-ee76-14b8c7749bd0",
  "kind": "lemma",
  "lexical_name": "restrict_aux",
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
  "slug": "restrict-aux--ee20ecb5a2e5c14f8a9ed022",
  "source": {
    "blob": "1080f3a5309f94a202bfe038ff5e84358e8e61bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee20ecb5a2e5c14f8a9ed022175ad4da732425a6fb5da40d4fa1441fb45b14ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7abaff2e-09e7-bde6-ee76-14b8c7749bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma restrict_aux : Bijective (p.toLinearMap.compl₁₂ i j) := by
  refine ⟨LinearMap.ker_eq_bot.mp <| eq_bot_iff.mpr fun m hm ↦ ?_, fun f ↦ ?_⟩
  · replace hm : i m ∈ (LinearMap.range j).dualAnnihilator.map p.toDualLeft.symm := by
      simp only [Submodule.mem_map, Submodule.mem_dualAnnihilator]
      refine ⟨p.toDualLeft (i m), ?_, LinearEquiv.symm_apply_apply _ _⟩
      rintro - ⟨n, rfl⟩
      simpa using LinearMap.congr_fun hm n
    suffices i m ∈ (⊥ : Submodule R M) by simpa [hi] using this
    simpa only [← hij.isCompl_left.inf_eq_bot, Submodule.mem_inf]
      using ⟨LinearMap.mem_range_self i m, hm⟩
  · set F : Module.Dual R N := f ∘ₗ j.linearProjOfIsCompl _ hj hij.isCompl_right with hF
    have hF (n : N') : F (j n) = f n := by simp [hF]
    set m : M := p.toDualLeft.symm F with hm
    obtain ⟨-, ⟨m₀, rfl⟩, y, hy, hm'⟩ :=
      Submodule.exists_add_eq_of_codisjoint hij.isCompl_left.codisjoint m
    refine ⟨m₀, LinearMap.ext fun n ↦ ?_⟩
    replace hy : (p y) (j n) = 0 := by
      simp only [Submodule.mem_map, Submodule.mem_dualAnnihilator] at hy
      obtain ⟨g, hg, rfl⟩ := hy
      simpa only [apply_toDualLeft_symm_apply] using hg _ (LinearMap.mem_range_self j n)
    rw [hm, ← LinearEquiv.symm_apply_eq, map_add, LinearEquiv.symm_symm,
      toDualLeft_apply] at hm'
    simpa [← hF, ← LinearMap.congr_fun hm' (j n)]

/-- The restriction of a perfect pairing to submodules (expressed as injections to provide
definitional control). -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Restrict/Variant2c420213d993bd7fc9eb51c131d2cfb27b9758b77f1a20a087bed378af8cd0d7.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1080f3a5309f94a202bfe038ff5e84358e8e61bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
