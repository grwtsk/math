# actual_correlation_zero_of_two_mul_le_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb9aa2e1-d5e8-36e5-4149-fce5280278d7",
  "kind": "theorem",
  "lexical_name": "actual_correlation_zero_of_two_mul_le_abs",
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
  "slug": "actual-correlation-zero-of-two-mul-le-abs--fab6bce12e291fa137d3bc21",
  "source": {
    "blob": "34903a7af4b17fb558af797833e5ceb777a1ffea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab6bce12e291fa137d3bc212ab233e774717cc9608536c025c38a283ee7dd81",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb9aa2e1-d5e8-36e5-4149-fce5280278d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    (∫ x, actualTest A x * actualTest A (x - t)) = 0 := by
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change actualTest A x * actualTest A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [actualTest_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have htbound : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [actualTest_zero_of_le_abs A (x - t) hA hxt, mul_zero]

/-- The exact upper support boundary contributes zero to the original correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34903a7af4b17fb558af797833e5ceb777a1ffea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
