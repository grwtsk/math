# weightedSum_le_two_mul_variation_mul_maxPrefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2535488c-b232-c781-b03c-82df90d1e1cb",
  "kind": "theorem",
  "lexical_name": "weightedSum_le_two_mul_variation_mul_maxPrefix",
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
  "slug": "weightedsum-le-two-mul-variation-mul-maxprefix--db164c58c17ee80b495cb3e0",
  "source": {
    "blob": "26e18def55f66698dc8d3aea7acb75de81452ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db164c58c17ee80b495cb3e0a4989d52e48e137d8999c65ececef7cc0d4546cc",
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

Occurrence: `result:2535488c-b232-c781-b03c-82df90d1e1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSum_le_two_mul_variation_mul_maxPrefix
    (N : ℕ) (weight : ℕ → ℝ) :
    |conductorThreeDiscreteWeightedSum N weight| ≤
      2 * DiscretePacketWeightCost N weight * maxPrefixNorm N := by
  rw [discrete_summationByParts]
  let M := maxPrefixNorm N
  let V := DiscretePacketWeightCost N weight
  have hM : 0 ≤ M := maxPrefixNorm_nonneg N
  have hV : 0 ≤ V := by
    unfold V DiscretePacketWeightCost
    positivity
  have hterminal : |weight (2 * N)| ≤ V :=
    abs_weight_terminal_le_cost N weight
  have hprefix : ∀ x ∈ Finset.range (2 * N),
      |conductorThreePsi x| ≤ M := by
    intro x hx
    apply abs_conductorThreePsi_le_maxPrefixNorm
    simp only [Finset.mem_range] at hx
    omega
  have hsum :
      |∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
        M * ∑ x ∈ Finset.range (2 * N),
          |weight (x + 1) - weight x| := by
    calc
      |∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
          ∑ x ∈ Finset.range (2 * N),
            |conductorThreePsi x * (weight x - weight (x + 1))| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ x ∈ Finset.range (2 * N),
            M * |weight (x + 1) - weight x| := by
        gcongr with x hx
        rw [abs_mul, abs_sub_comm]
        exact mul_le_mul_of_nonneg_right (hprefix x hx) (abs_nonneg _)
      _ = M * ∑ x ∈ Finset.range (2 * N),
            |weight (x + 1) - weight x| := by rw [Finset.mul_sum]
  calc
    |conductorThreePsi (2 * N) * weight (2 * N) +
        ∑ x ∈ Finset.range (2 * N),
          conductorThreePsi x * (weight x - weight (x + 1))| ≤
        |conductorThreePsi (2 * N) * weight (2 * N)| +
          |∑ x ∈ Finset.range (2 * N),
            conductorThreePsi x * (weight x - weight (x + 1))| :=
      abs_add_le _ _
    _ ≤ M * V + M * ∑ x ∈ Finset.range (2 * N),
          |weight (x + 1) - weight x| := by
      gcongr
      rw [abs_mul]
      exact mul_le_mul (abs_conductorThreePsi_le_maxPrefixNorm
        (N := N) (x := 2 * N) le_rfl) hterminal (abs_nonneg _) hM
    _ ≤ M * V + M * V := by
      gcongr
      unfold V DiscretePacketWeightCost
      linarith [abs_nonneg (weight 0)]
    _ = 2 * V * M := by ring

/-- The prefix cutoff has cost at most `2` at any enclosing scale.  If the
prefix reaches the end of the scale window its actual cost is `1`; otherwise
it is exactly `2`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BVMaximalDuality/Variantd57c223f2f4e127629fb663c5c81099a2565399961f9bb81642f0e2903e7ec75.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26e18def55f66698dc8d3aea7acb75de81452ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
