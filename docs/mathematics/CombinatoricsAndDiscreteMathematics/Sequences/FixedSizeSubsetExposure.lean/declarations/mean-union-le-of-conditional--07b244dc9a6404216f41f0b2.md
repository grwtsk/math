# mean_union_le_of_conditional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6560cff9-5f4a-5edb-2288-4796e8430c22",
  "kind": "theorem",
  "lexical_name": "mean_union_le_of_conditional",
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
  "slug": "mean-union-le-of-conditional--07b244dc9a6404216f41f0b2",
  "source": {
    "blob": "9f892475421f04d20782b1e111d51787f8e16876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 275,
    "path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b244dc9a6404216f41f0b245028b5e825605d3234ae7ef536734b80513908b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6560cff9-5f4a-5edb-2288-4796e8430c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_union_le_of_conditional (S : Finset α) (a b : ℕ)
    (hab : a + b ≤ S.card) (f : Finset α → ℝ) (c : ℝ)
    (hconditional : ∀ A ∈ S.powersetCard a,
      (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ) ≤ c) :
    (∑ R ∈ S.powersetCard (a + b), f R) /
        ((S.powersetCard (a + b)).card : ℝ) ≤ c := by
  rw [mean_union_exposure S a b hab f]
  have hfirst : (0 : ℝ) < (S.powersetCard a).card := by
    exact_mod_cast (exposure_spaces_nonempty S a b hab).2.1.card_pos
  apply (div_le_iff₀ hfirst).mpr
  calc
    (∑ A ∈ S.powersetCard a,
        (∑ B ∈ (S \ A).powersetCard b, f (A ∪ B)) /
          (((S \ A).powersetCard b).card : ℝ)) ≤
        ∑ _A ∈ S.powersetCard a, c :=
      Finset.sum_le_sum hconditional
    _ = c * ((S.powersetCard a).card : ℝ) := by
      simp [nsmul_eq_mul, mul_comm]

/-- Exact event-probability form of the two-stage sampling law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f892475421f04d20782b1e111d51787f8e16876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
