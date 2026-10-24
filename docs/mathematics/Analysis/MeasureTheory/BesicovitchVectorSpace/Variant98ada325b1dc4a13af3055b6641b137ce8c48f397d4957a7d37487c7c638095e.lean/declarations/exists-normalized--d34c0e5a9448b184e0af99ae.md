# exists_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e53ac6c8-0496-80bd-ec6a-43813532069a",
  "kind": "theorem",
  "lexical_name": "exists_normalized",
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
  "slug": "exists-normalized--d34c0e5a9448b184e0af99ae",
  "source": {
    "blob": "6a0f147cc081eff8b87d2df967d8e6b76be8b601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 459,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d34c0e5a9448b184e0af99ae8f0b958d532e5c2fa99ccffc20bb970d0fd4b4ff",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e53ac6c8-0496-80bd-ec6a-43813532069a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_normalized {N : ℕ} {τ : ℝ} (a : SatelliteConfig E N τ) (lastc : a.c (last N) = 0)
    (lastr : a.r (last N) = 1) (hτ : 1 ≤ τ) (δ : ℝ) (hδ1 : τ ≤ 1 + δ / 4) (hδ2 : δ ≤ 1) :
    ∃ c' : Fin N.succ → E, (∀ n, ‖c' n‖ ≤ 2) ∧ Pairwise fun i j => 1 - δ ≤ ‖c' i - c' j‖ := by
  let c' : Fin N.succ → E := fun i => if ‖a.c i‖ ≤ 2 then a.c i else (2 / ‖a.c i‖) • a.c i
  have norm_c'_le : ∀ i, ‖c' i‖ ≤ 2 := by
    intro i
    simp only [c']
    split_ifs with h; · exact h
    by_cases hi : ‖a.c i‖ = 0 <;> simp [norm_smul, hi]
  refine ⟨c', fun n => norm_c'_le n, fun i j inej => ?_⟩
  -- up to exchanging `i` and `j`, one can assume `‖c i‖ ≤ ‖c j‖`.
  wlog hij : ‖a.c i‖ ≤ ‖a.c j‖ generalizing i j
  · rw [norm_sub_rev]; exact this j i inej.symm (le_of_not_ge hij)
  rcases le_or_gt ‖a.c j‖ 2 with (Hj | Hj)
  -- case `‖c j‖ ≤ 2` (and therefore also `‖c i‖ ≤ 2`)
  · simp_rw [c', Hj, hij.trans Hj, ite_true]
    exact exists_normalized_aux1 a lastr hτ δ hδ1 hδ2 i j inej
  -- case `2 < ‖c j‖`
  · have H'j : ‖a.c j‖ ≤ 2 ↔ False := by simpa only [not_le, iff_false] using Hj
    rcases le_or_gt ‖a.c i‖ 2 with (Hi | Hi)
    · -- case `‖c i‖ ≤ 2`
      simp_rw [c', Hi, ite_true, H'j, ite_false]
      exact exists_normalized_aux2 a lastc lastr hτ δ hδ1 hδ2 i j inej Hi Hj
    · -- case `2 < ‖c i‖`
      have H'i : ‖a.c i‖ ≤ 2 ↔ False := by simpa only [not_le, iff_false] using Hi
      simp_rw [c', H'i, ite_false, H'j, ite_false]
      exact exists_normalized_aux3 a lastc lastr hτ δ hδ1 i j inej Hi hij

end SatelliteConfig

variable (E)
variable [NormedSpace ℝ E] [FiniteDimensional ℝ E]

/-- In a normed vector space `E`, there can be no satellite configuration with `multiplicity E + 1`
points and the parameter `goodτ E`. This will ensure that in the inductive construction to get
the Besicovitch covering families, there will never be more than `multiplicity E` nonempty
families. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant98ada325b1dc4a13af3055b6641b137ce8c48f397d4957a7d37487c7c638095e.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a0f147cc081eff8b87d2df967d8e6b76be8b601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
