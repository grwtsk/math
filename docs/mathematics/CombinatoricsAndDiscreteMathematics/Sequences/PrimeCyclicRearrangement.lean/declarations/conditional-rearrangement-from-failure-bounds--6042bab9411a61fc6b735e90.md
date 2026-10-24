# conditional_rearrangement_from_failure_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4c04d5-3a6a-b08a-6e24-0aa5733c0fb6",
  "kind": "theorem",
  "lexical_name": "conditional_rearrangement_from_failure_bounds",
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
  "slug": "conditional-rearrangement-from-failure-bounds--6042bab9411a61fc6b735e90",
  "source": {
    "blob": "7891da79dc3d1a40e1093a907e493e4a6024cb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 179,
    "path": "GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6042bab9411a61fc6b735e904fad2a7232b9bedab03ff488dfce5e041bb4a6e6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4c04d5-3a6a-b08a-6e24-0aa5733c0fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_rearrangement_from_failure_bounds (σ : Fin n → G) (D : ℕ)
    (hD : 0 < D) (hn : ∀ i, σ i ≠ 0)
    (h₁ : probability (permutationSpace n) (tailFailure σ D) ≤ 1 / 100)
    (h₂ : probability (permutationSpace n) (densityFailure σ D) ≤ 3 / 100)
    (h₃ : probability (permutationSpace n) (compatibilityFailure σ D) ≤ 1 / 25) :
    ∃ xs : List G, xs.Perm (List.ofFn σ) ∧ ValidPartialSumOrder xs := by
  obtain ⟨ρ, hg⟩ := conditional_good_geometry_exists σ D hD h₁ h₂ h₃
  obtain ⟨trace, _, _, hp, hv⟩ := goodRepairGeometry_valid_permutation
    (σ ∘ ρ) D (fun i => hn (ρ i)) hg
  exact ⟨_, hp.trans (ρ.ofFn_comp_perm σ), hv⟩

end
end ProbabilityReduction

/-- Exact source-range target from Theorem 1.2 of arXiv:2602.15797v1.
This definition only records the unproved target. It is not a theorem or an
anti-concentration interface, and supplies no witness or probability bound.
The empty initial prefix is excluded by `ValidPartialSumOrder`.
No assertion of the full Graham conjecture is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7891da79dc3d1a40e1093a907e493e4a6024cb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
