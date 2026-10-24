# normalized_block_count_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbada11a-ad61-0b97-1ef7-429b0c9c4372",
  "kind": "theorem",
  "lexical_name": "normalized_block_count_error",
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
  "slug": "normalized-block-count-error--bf37baf50ecc17d072a639b3",
  "source": {
    "blob": "0a4fbf9dc143de22ee202dbaa7940a35e2823d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/Spectral/SturmianBlockCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf37baf50ecc17d072a639b36822f8f6ee8cd90a271df3b3242a79957fd86b01",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbada11a-ad61-0b97-1ef7-429b0c9c4372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_block_count_error (q L r : ℕ) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount (q*L+r) α V ξ origin E -
      blockCountSum q L α V ξ origin E / (q*L+r:ℕ)| ≤
      (2*(q:ℝ)+(r:ℝ))/(q*L+r:ℕ) := by
  rw [sturmianNormalizedCount, ← sub_div, abs_div, abs_of_nonneg (Nat.cast_nonneg (q*L+r) : (0:ℝ) ≤ (q*L+r:ℕ)),
    abs_sub_comm]
  exact div_le_div_of_nonneg_right (block_count_error q L r hL α V ξ origin E)
    (Nat.cast_nonneg _)

/-- Complete blocks use N/L and the true remainder N%L. The denominator is the
whole volume N, so this is a weighted block total rather than a q-block average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/SturmianBlockCounts.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4fbf9dc143de22ee202dbaa7940a35e2823d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
