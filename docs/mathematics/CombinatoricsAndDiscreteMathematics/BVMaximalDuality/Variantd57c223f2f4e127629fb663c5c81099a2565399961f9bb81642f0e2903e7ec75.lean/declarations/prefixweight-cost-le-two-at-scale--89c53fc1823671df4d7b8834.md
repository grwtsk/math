# prefixWeight_cost_le_two_at_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:208da3eb-7cc1-02fe-edfe-9d3bc4da435c",
  "kind": "theorem",
  "lexical_name": "prefixWeight_cost_le_two_at_scale",
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
  "slug": "prefixweight-cost-le-two-at-scale--89c53fc1823671df4d7b8834",
  "source": {
    "blob": "26e18def55f66698dc8d3aea7acb75de81452ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c53fc1823671df4d7b8834d814dbebc58072b0a6b4b9582244529ac2cc5349",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208da3eb-7cc1-02fe-edfe-9d3bc4da435c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixWeight_cost_le_two_at_scale
    {N x : ℕ} (hx : x ≤ 2 * N) :
    DiscretePacketWeightCost N (conductorThreePrefixWeight x) ≤ 2 := by
  have _hwindow : x < 2 * N + 1 := by omega
  unfold DiscretePacketWeightCost conductorThreePrefixWeight
  simp only [Nat.zero_le, if_true, abs_one]
  have hterm :
      (∑ n ∈ Finset.range (2 * N),
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)|) ≤ 1 := by
    have hpoint : ∀ n ∈ Finset.range (2 * N),
        |(if n + 1 ≤ x then (1 : ℝ) else 0) -
          (if n ≤ x then 1 else 0)| = if n = x then 1 else 0 := by
      intro n hn
      by_cases hnx : n = x
      · subst n
        simp
      · rcases lt_or_gt_of_ne hnx with hlt | hgt
        · have hsucc : n + 1 ≤ x := by omega
          simp [hsucc, hnx, Nat.le_of_lt hlt]
        · have hnle : ¬n ≤ x := by omega
          have hsucc : ¬n + 1 ≤ x := by omega
          simp [hnle, hsucc, hnx]
    rw [Finset.sum_congr rfl hpoint]
    by_cases hmem : x ∈ Finset.range (2 * N)
    · rw [Finset.sum_eq_single x]
      · simp
      · intro b hb hbx
        simp [hbx]
      · exact fun h ↦ (h hmem).elim
    · rw [Finset.sum_eq_zero]
      · norm_num
      · intro n hn
        have hne : n ≠ x := by
          intro h
          subst n
          exact hmem hn
        simp [hne]
  linarith

/-- At any enclosing scale, the prefix multiplier still reads exactly the
requested arithmetic moment. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e18def55f66698dc8d3aea7acb75de81452ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
