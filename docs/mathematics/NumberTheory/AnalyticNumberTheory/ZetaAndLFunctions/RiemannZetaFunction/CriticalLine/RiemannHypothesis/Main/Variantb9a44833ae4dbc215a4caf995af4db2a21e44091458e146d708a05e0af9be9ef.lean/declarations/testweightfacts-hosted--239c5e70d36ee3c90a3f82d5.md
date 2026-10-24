# testWeightFacts_hosted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dad48c2ecd554aae3f8a4d3f721f4438f23368ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a44833ae4dbc215a4caf995af4db2a21e44091458e146d708a05e0af9be9ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da6774ea-126f-065d-7d93-695c1160e35c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ce936b7-2bd2-01a0-281c-5f2cd5f4cc0f",
  "kind": "theorem",
  "lexical_name": "testWeightFacts_hosted",
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
  "slug": "testweightfacts-hosted--239c5e70d36ee3c90a3f82d5",
  "source": {
    "blob": "dad48c2ecd554aae3f8a4d3f721f4438f23368ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantb9a44833ae4dbc215a4caf995af4db2a21e44091458e146d708a05e0af9be9ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:239c5e70d36ee3c90a3f82d517e1aeeb42c85afc68320513c4b81e51cf041280",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantb9a44833ae4dbc215a4caf995af4db2a21e44091458e146d708a05e0af9be9ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ce936b7-2bd2-01a0-281c-5f2cd5f4cc0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testWeightFacts_hosted {Pf : ℝ → Params} (hPf : FamilyHyps Pf) : TestWeightFacts Pf := by
  obtain ⟨T₀, hreg⟩ := testWeight_regular hPf
  obtain ⟨C₁, T₁, hC₁, h₁⟩ := testWeight_norm_le hPf
  obtain ⟨C₂, T₂, hC₂, h₂⟩ := testWeight_moment_norm_le hPf
  obtain ⟨C₃, T₃, hC₃, h₃⟩ := testWeight_neg_norm_le hPf
  refine ⟨max (max C₁ C₂) C₃, max (max T₀ T₁) (max T₂ T₃), by positivity, fun T hT k l => ?_⟩
  have hT₀ : T₀ ≤ T := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hT
  have hT₁ : T₁ ≤ T := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hT
  have hT₂ : T₂ ≤ T := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hT
  have hT₃ : T₃ ≤ T := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hT
  obtain ⟨⟨hLpos, -⟩, hkl⟩ := hreg T hT₀
  obtain ⟨⟨hcd, hcs, hsupp⟩, -⟩ := hkl k l
  have hXr : 0 ≤ (Pf T).X T ^ (3 / 4 : ℝ) := Real.rpow_nonneg (Real.exp_pos _).le _
  have hC₁' : C₁ ≤ max (max C₁ C₂) C₃ := le_trans (le_max_left _ _) (le_max_left _ _)
  have hC₂' : C₂ ≤ max (max C₁ C₂) C₃ := le_trans (le_max_right _ _) (le_max_left _ _)
  have hC₃' : C₃ ≤ max (max C₁ C₂) C₃ := le_max_right _ _
  have hmir : ∀ t : ℝ, Hfn (kfun (Pf T) T k l) (1 - (5/4:ℝ) - t * I)
      = Hfn (fun u => kfun (Pf T) T k l (-u)) ((5 / 4 : ℂ) + t * I) := by
    intro t; rw [Hfn_mirror, five_four_cast]
  refine ⟨hcd, hcs, hsupp, fun t => ?_, fun t => ?_, fun t => ?_, fun t => ?_⟩
  · rw [five_four_cast, cauchyK_mul_eq, mul_one_div]
    refine (h₁ T hT₁ k l t).trans (div_le_div_of_nonneg_right ?_ (by positivity))
    gcongr
  · rw [five_four_cast, cauchyK_mul_eq, mul_one_div]
    refine (h₂ T hT₂ k l t).trans (div_le_div_of_nonneg_right ?_ (by positivity))
    gcongr
  · rw [hmir, cauchyK_neg_mul_eq, mul_one_div]
    refine (h₃ T hT₃ k l t).1.trans (div_le_div_of_nonneg_right ?_ (by positivity))
    gcongr
  · rw [hmir, cauchyK_neg_mul_eq, mul_one_div]
    refine (h₃ T hT₃ k l t).2.trans (div_le_div_of_nonneg_right ?_ (by positivity))
    gcongr


/-! ### the three input Props of XiEFAssembly, discharged -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantb9a44833ae4dbc215a4caf995af4db2a21e44091458e146d708a05e0af9be9ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantb9a44833ae4dbc215a4caf995af4db2a21e44091458e146d708a05e0af9be9ef.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dad48c2ecd554aae3f8a4d3f721f4438f23368ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
