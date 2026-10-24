# actual_correlation_upper_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fed1f292-ac26-04f4-4ce5-d4fa0930d039",
  "kind": "theorem",
  "lexical_name": "actual_correlation_upper_endpoint",
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
  "slug": "actual-correlation-upper-endpoint--c38909553608ec5a52c6b2f7",
  "source": {
    "blob": "34903a7af4b17fb558af797833e5ceb777a1ffea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c38909553608ec5a52c6b2f751f50626013a35ff63afd661177eb66a89e459e3",
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

Occurrence: `result:fed1f292-ac26-04f4-4ce5-d4fa0930d039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_upper_endpoint (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, actualTest A x * actualTest A (x - 2 * A)) = 0 :=
  actual_correlation_zero_of_two_mul_le_abs A (2 * A) hA (le_abs_self _)

/-- Enlarging the ambient support radius retains the exact full arithmetic form.
Only additional strict-cutoff prime terms vanish; both pole moments are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant854909ab7c91ff4bdfa9b14ac9c5923010480b2885b09fe42e9f6c1b2feffa99.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34903a7af4b17fb558af797833e5ceb777a1ffea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
