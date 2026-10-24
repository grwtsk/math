# exists_nontrivial_weightSpace_of_lieIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2918552-947e-38d6-f70d-1214f5b64ac7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d7751f1-d7c5-d455-dd04-5ca2aac109ee",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_weightSpace_of_lieIdeal",
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
  "slug": "exists-nontrivial-weightspace-of-lieideal--f8b47bc95a9ca57057366063",
  "source": {
    "blob": "29f87660be69e2247c93d5076461a3aa2eff1472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b47bc95a9ca570573660639cbb0f096c20e4d51d5fa35b14aa66d34b640859",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d7751f1-d7c5-d455-dd04-5ca2aac109ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_weightSpace_of_lieIdeal [LieModule.IsTriangularizable k L V]
    (A : LieIdeal k L) (hA : IsCoatom A.toSubmodule)
    (χ₀ : Module.Dual k A) [Nontrivial (weightSpace V χ₀)] :
    ∃ (χ : Module.Dual k L), Nontrivial (weightSpace V χ) := by
  obtain ⟨z, -, hz⟩ := SetLike.exists_of_lt (hA.lt_top)
  let e : (k ∙ z) ≃ₗ[k] k := (LinearEquiv.toSpanNonzeroSingleton k L z <| by aesop).symm
  have he : ∀ x, e x • z = x := by simp [e]
  have hA : IsCompl A.toSubmodule (k ∙ z) := isCompl_span_singleton_of_isCoatom_of_notMem hA hz
  let π₁ : L →ₗ[k] A       := A.toSubmodule.linearProjOfIsCompl (k ∙ z) hA
  let π₂ : L →ₗ[k] (k ∙ z) := (k ∙ z).linearProjOfIsCompl ↑A hA.symm

  set W : LieSubmodule k L V := weightSpaceOfIsLieTower k V χ₀
  obtain ⟨c, hc⟩ : ∃ c, (toEnd k _ W z).HasEigenvalue c := by
    have : Nontrivial W := inferInstanceAs (Nontrivial (weightSpace V χ₀))
    apply Module.End.exists_hasEigenvalue_of_genEigenspace_eq_top
    exact LieModule.IsTriangularizable.maxGenEigenspace_eq_top z

  obtain ⟨⟨v, hv⟩, hvc⟩ := hc.exists_hasEigenvector
  have hv' : ∀ (x : ↥A), ⁅x, v⁆ = χ₀ x • v := by
    simpa [W, weightSpaceOfIsLieTower, mem_weightSpace] using hv

  use (χ₀.comp π₁) + c • (e.comp π₂)
  refine nontrivial_of_ne ⟨v, ?_⟩ 0 ?_
  · rw [mem_weightSpace]
    intro x
    have hπ : (π₁ x : L) + π₂ x = x := linear_proj_add_linearProjOfIsCompl_eq_self hA x
    suffices ⁅(π₂ x : L), v⁆ = (c • e (π₂ x)) • v by
      calc ⁅x, v⁆
          = ⁅π₁ x, v⁆       + ⁅(π₂ x : L), v⁆    := congr(⁅$hπ.symm, v⁆) ▸ add_lie _ _ _
        _ =  χ₀ (π₁ x) • v  + (c • e (π₂ x)) • v := by rw [hv' (π₁ x), this]
        _ = _ := by simp [add_smul]
    calc ⁅(π₂ x : L), v⁆
        = e (π₂ x) • ↑(c • ⟨v, hv⟩ : W) := by rw [← he, smul_lie, ← hvc.apply_eq_smul]; rfl
      _ = (c • e (π₂ x)) • v              := by rw [smul_assoc, smul_comm]; rfl
  · simpa [ne_eq, LieSubmodule.mk_eq_zero] using hvc.right

variable (k L V)
variable [Nontrivial V]

open LieAlgebra

-- This lemma is the central inductive argument in the proof of Lie's theorem below.
-- The statement is identical to `LieModule.exists_forall_lie_eq_smul_of_isSolvable`
-- except that it additionally assumes a finiteness hypothesis.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LieTheorem/Varianta810b3e2223e308c6a6b499fcb0d0dc9e369e592d03ca8fae7420d047d3761ad.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f87660be69e2247c93d5076461a3aa2eff1472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
