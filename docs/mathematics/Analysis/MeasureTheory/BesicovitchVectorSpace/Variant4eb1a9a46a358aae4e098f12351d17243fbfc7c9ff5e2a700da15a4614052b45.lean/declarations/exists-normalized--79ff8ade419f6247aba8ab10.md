# exists_normalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6767b4a-e563-913c-c366-f9c446cca3fd",
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
  "slug": "exists-normalized--79ff8ade419f6247aba8ab10",
  "source": {
    "blob": "1869385c3d944b59e8aa3a2782b82eae1267759e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 456,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79ff8ade419f6247aba8ab102243eaab67a41d5e497d5a305e29cd9ea2df37c4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6767b4a-e563-913c-c366-f9c446cca3fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–492.

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
    by_cases hi : ‖a.c i‖ = 0 <;> field_simp [norm_smul, hi]
  refine ⟨c', fun n => norm_c'_le n, fun i j inej => ?_⟩
  -- up to exchanging `i` and `j`, one can assume `‖c i‖ ≤ ‖c j‖`.
  wlog hij : ‖a.c i‖ ≤ ‖a.c j‖ generalizing i j
  · rw [norm_sub_rev]; exact this j i inej.symm (le_of_not_le hij)
  rcases le_or_lt ‖a.c j‖ 2 with (Hj | Hj)
  -- case `‖c j‖ ≤ 2` (and therefore also `‖c i‖ ≤ 2`)
  · simp_rw [c', Hj, hij.trans Hj, if_true]
    exact exists_normalized_aux1 a lastr hτ δ hδ1 hδ2 i j inej
  -- case `2 < ‖c j‖`
  · have H'j : ‖a.c j‖ ≤ 2 ↔ False := by simpa only [not_le, iff_false] using Hj
    rcases le_or_lt ‖a.c i‖ 2 with (Hi | Hi)
    · -- case `‖c i‖ ≤ 2`
      simp_rw [c', Hi, if_true, H'j, if_false]
      exact exists_normalized_aux2 a lastc lastr hτ δ hδ1 hδ2 i j inej Hi Hj
    · -- case `2 < ‖c i‖`
      have H'i : ‖a.c i‖ ≤ 2 ↔ False := by simpa only [not_le, iff_false] using Hi
      simp_rw [c', H'i, if_false, H'j, if_false]
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1869385c3d944b59e8aa3a2782b82eae1267759e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
