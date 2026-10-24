# sum_mult_one_sub_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caab4e6e-ae13-60a7-22b2-3595e0a925a9",
  "kind": "theorem",
  "lexical_name": "sum_mult_one_sub_re",
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
  "slug": "sum-mult-one-sub-re--30b40739a172e721989962af",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 382,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30b40739a172e721989962af62eebe278a10c8188e47972224a3a457f47e1512",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caab4e6e-ae13-60a7-22b2-3595e0a925a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mult_one_sub_re (T : ℝ) :
    ∑ ρ ∈ (finite_absWindow T).toFinset, (zeroMult ρ : ℝ) * (1 - ρ.re)
      = ∑ ρ ∈ (finite_absWindow T).toFinset, (zeroMult ρ : ℝ) * ρ.re := by
  have hmem : ∀ ρ, ρ ∈ (finite_absWindow T).toFinset ↔ IsNontrivialZero ρ ∧ |ρ.im| ≤ T := fun ρ => by
    rw [Set.Finite.mem_toFinset]; rfl
  have hrr : ∀ ρ : ℂ, reflect (reflect ρ) = ρ := fun ρ => by simp [reflect]
  have hre : ∀ ρ : ℂ, (reflect ρ).re = 1 - ρ.re := fun ρ => by simp [reflect]
  have hmaps : ∀ ρ ∈ (finite_absWindow T).toFinset, reflect ρ ∈ (finite_absWindow T).toFinset := by
    intro ρ hρ
    rw [hmem] at hρ ⊢
    exact ⟨zeta_reflect_zero ρ hρ.1, by rw [reflect_im]; exact hρ.2⟩
  refine Finset.sum_nbij' reflect reflect hmaps hmaps (fun ρ _ => hrr ρ) (fun ρ _ => hrr ρ) ?_
  intro ρ hρ
  rw [zeta_mult_reflect ρ ((hmem ρ).mp hρ).1, hre]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
