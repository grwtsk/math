# lowerTailProbability_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ad9b132-1514-d572-3fba-cd71c0f586ca",
  "kind": "theorem",
  "lexical_name": "lowerTailProbability_quarter",
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
  "slug": "lowertailprobability-quarter--5018e853e2bf3c4dd1ab8986",
  "source": {
    "blob": "d585c34e73d979b5517cc5c0ebba6107cf40c1cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 239,
    "path": "GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5018e853e2bf3c4dd1ab8986ee14891b0c36e94f1174fa339e97a921f05e971d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ad9b132-1514-d572-3fba-cd71c0f586ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerTailProbability_quarter (S G : Finset α) (hG : G ⊆ S) (hS : S.Nonempty)
    (k : ℕ) (hk : k ≤ S.card) (hdensity : (S.card : ℝ) / 4 ≤ G.card) :
    lowerTailProbability S G k (1 / 8) ≤ Real.exp (-(k : ℝ) / 32) := by
  have hN : (0 : ℝ) < S.card := by exact_mod_cast hS.card_pos
  have hcard : ((S \ G).card : ℝ) = (S.card : ℝ) - G.card := by
    rw [Finset.card_sdiff_of_subset hG, Nat.cast_sub (Finset.card_le_card hG)]
  have hratio : ((S \ G).card : ℝ) / S.card ≤ 3 / 4 := by
    apply (div_le_iff₀ hN).mpr
    rw [hcard]
    linarith
  have hbase : 0 < 1 + ((S \ G).card : ℝ) / S.card := by positivity
  have hlog : Real.log (1 + ((S \ G).card : ℝ) / S.card) ≤ Real.log (7 / 4) :=
    Real.log_le_log hbase (by linarith)
  have hrate : Real.log (1 + ((S \ G).card : ℝ) / S.card) -
      (1 - (1 / 8 : ℝ)) * Real.log 2 ≤ -(1 / 32 : ℝ) := by
    linarith [log_seven_quarters_upper, log_two_lower]
  have hmul := mul_le_mul_of_nonneg_left hrate (by positivity : (0 : ℝ) ≤ k)
  apply (lowerTailProbability_le_exponential S G hS k hk (1 / 8)).trans
  apply Real.exp_le_exp.mpr
  nlinarith [hmul]

/-- A success density at least `3/4` gives the lower-tail estimate required in
Pham–Sauermann Lemma 3.3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/HypergeometricLowerTail.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d585c34e73d979b5517cc5c0ebba6107cf40c1cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
