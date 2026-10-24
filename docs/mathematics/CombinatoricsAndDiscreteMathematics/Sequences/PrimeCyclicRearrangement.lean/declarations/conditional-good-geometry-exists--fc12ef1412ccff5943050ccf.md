# conditional_good_geometry_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f1859f1-7942-918a-332f-3f4c0e3e2d5a",
  "kind": "theorem",
  "lexical_name": "conditional_good_geometry_exists",
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
  "slug": "conditional-good-geometry-exists--fc12ef1412ccff5943050ccf",
  "source": {
    "blob": "7891da79dc3d1a40e1093a907e493e4a6024cb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 164,
    "path": "GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc12ef1412ccff5943050ccf675afb880afcc6ff46fbfe842ac1725ae8f9a290",
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

Occurrence: `result:8f1859f1-7942-918a-332f-3f4c0e3e2d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_good_geometry_exists (σ : Fin n → G) (D : ℕ) (hD : 0 < D)
    (h₁ : probability (permutationSpace n) (tailFailure σ D) ≤ 1 / 100)
    (h₂ : probability (permutationSpace n) (densityFailure σ D) ≤ 3 / 100)
    (h₃ : probability (permutationSpace n) (compatibilityFailure σ D) ≤ 1 / 25) :
    ∃ ρ : Equiv.Perm (Fin n), GoodRepairGeometry (σ ∘ ρ) D := by
  have hm := conditional_good_geometry_probability σ D h₁ h₂ h₃
  have hp : 0 < probability (permutationSpace n) (goodPermutationEvent σ D) := by
    exact lt_of_lt_of_le (by norm_num : (0 : ℚ) < 23 / 25) hm
  obtain ⟨ρ, _, hρ⟩ := exists_of_probability_pos _ _ hp
  exact ⟨ρ, (mem_goodPermutationEvent_iff σ D hD ρ).mp hρ⟩

/-- Closed deterministic/probabilistic reduction: three actual failure-event
bounds produce a good permutation, then bounded disjoint repair produces a
valid rearrangement of the ORIGINAL packet. This remains conditional until the
source Lemmas 5.1--5.3 estimates in its premises are independently proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PrimeCyclicRearrangement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7891da79dc3d1a40e1093a907e493e4a6024cb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
