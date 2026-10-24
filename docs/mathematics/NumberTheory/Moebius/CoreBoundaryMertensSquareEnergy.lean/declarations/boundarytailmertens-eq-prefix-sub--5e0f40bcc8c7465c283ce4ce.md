# boundaryTailMertens_eq_prefix_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26304bed-df44-6e47-d3ac-7dca6154571a",
  "kind": "theorem",
  "lexical_name": "boundaryTailMertens_eq_prefix_sub",
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
  "slug": "boundarytailmertens-eq-prefix-sub--5e0f40bcc8c7465c283ce4ce",
  "source": {
    "blob": "da8dc01529865475e7505bfa12a98fa129e2b44a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 87,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e0f40bcc8c7465c283ce4ce91b7e7e08f6dc6121fc69f37cb4b6aedc8833017",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26304bed-df44-6e47-d3ac-7dca6154571a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryTailMertens_eq_prefix_sub
    {j u : ℕ}
    (hHX : logarithmicShiftThreshold j ≤ 2 ^ j)
    (huX : u < 2 ^ j) :
    boundaryTailMertens j u =
      mertensPrefixReal (2 ^ j - u - 1) -
        mertensPrefixReal (logarithmicShallowDepthCount j - u) := by
  rw [boundaryTailMertens, boundaryCoreDepths_eq_Ico hHX]
  let D : ℕ := logarithmicShallowDepthCount j
  let X : ℕ := 2 ^ j
  by_cases huD : u ≤ D
  · have hDX : D ≤ X - 1 := by
      have hDH :
          D ≤ logarithmicShiftThreshold j :=
        logarithmicShallowDepthCount_le_threshold j
      omega
    have hall :
        ∀ t ∈ Finset.Ico D (X - 1), u ≤ t := by
      intro t ht
      simp only [Finset.mem_Ico] at ht
      omega
    simp only [hall, if_true]
    have hshift :=
      sum_Ico_sub_shift (fun s => moebiusReal (s + 1))
        (a := D) (b := X - 1) huD
    have hrewrite :
        (∑ t ∈ Finset.Ico D (X - 1),
          moebiusReal (t - u + 1)) =
        ∑ s ∈ Finset.Ico (D - u) (X - u - 1),
          moebiusReal (s + 1) := by
      simpa using hshift
    rw [hrewrite]
    symm
    exact mertensPrefixReal_sub_eq_Ico (by omega)
  · have hDu : D < u := Nat.lt_of_not_ge huD
    have hfilter :
        (∑ t ∈ Finset.Ico D (X - 1),
          if u ≤ t then moebiusReal (t - u + 1) else 0) =
        ∑ t ∈ Finset.Ico u (X - 1),
          moebiusReal (t - u + 1) := by
      rw [← Finset.sum_filter]
      apply Finset.sum_congr
      · ext t
        simp only [Finset.mem_filter, Finset.mem_Ico]
        constructor
        · intro ht
          exact ⟨ht.2, ht.1.2⟩
        · intro ht
          exact ⟨⟨by omega, ht.2⟩, ht.1⟩
      · intro t ht
        simp only [Finset.mem_filter] at ht
        simp [ht.2]
    rw [hfilter]
    have hshift :=
      sum_Ico_sub_shift (fun s => moebiusReal (s + 1))
        (a := u) (b := X - 1) (Nat.le_refl u)
    have hrewrite :
        (∑ t ∈ Finset.Ico u (X - 1),
          moebiusReal (t - u + 1)) =
        ∑ s ∈ Finset.Ico 0 (X - u - 1),
          moebiusReal (s + 1) := by
      simpa using hshift
    rw [hrewrite]
    have hDsub : D - u = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt hDu)
    rw [hDsub, mertensPrefixReal]
    simp
    symm
    exact mertensPrefixReal_sub_eq_Ico (Nat.zero_le _)

/-- One localized ordinary-Mertens square statistic containing every prefix
that appears in either boundary Cauchy factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMertensSquareEnergy.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8dc01529865475e7505bfa12a98fa129e2b44a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
