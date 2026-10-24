# dyadicAnnulus_support_scales

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9966413-2835-abf2-ce7f-36228431cf03",
  "kind": "lemma",
  "lexical_name": "dyadicAnnulus_support_scales",
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
  "slug": "dyadicannulus-support-scales--f18eab52042fc8b7dba0d149",
  "source": {
    "blob": "1f56668e34261d00fba8c2a21fb758a973e62aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f18eab52042fc8b7dba0d149f87195d980c94f92596d380b1d86ce8cc4dd63a2",
  "verification": {
    "reference": "docs/verification/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9966413-2835-abf2-ce7f-36228431cf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dyadicAnnulus_support_scales (x : ℝ) (K : ℕ)
    (hlo : (2:ℝ)^K ≤ x) (hhi : x < (2:ℝ)^(K+1)) (j : ℕ)
    (hj : j ∉ ({K,K+1}:Finset ℕ)) : dyadicAnnulus (x/(2:ℝ)^j) = 0 := by
  have hp : (0:ℝ) < 2^j := by positivity
  have hj' : j ≠ K ∧ j ≠ K+1 := by simpa using hj
  by_cases hlt : j < K
  · apply dyadicAnnulus_large
    apply (le_div_iff₀ hp).mpr
    have h := pow_le_pow_right₀ (by norm_num : (1:ℝ) ≤ 2) (show j+1 ≤ K by omega)
    rw [pow_succ] at h
    linarith
  · apply dyadicAnnulus_small
    apply (div_le_iff₀ hp).mpr
    have h := pow_le_pow_right₀ (by norm_num : (1:ℝ) ≤ 2) (show K+2 ≤ j by omega)
    have he : (2:ℝ)^(K+2) = 2*((2:ℝ)^(K+1)) := by rw [pow_succ]; ring
    rw [he] at h
    linarith

/-- The natural dyadic family covers every point at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f56668e34261d00fba8c2a21fb758a973e62aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
