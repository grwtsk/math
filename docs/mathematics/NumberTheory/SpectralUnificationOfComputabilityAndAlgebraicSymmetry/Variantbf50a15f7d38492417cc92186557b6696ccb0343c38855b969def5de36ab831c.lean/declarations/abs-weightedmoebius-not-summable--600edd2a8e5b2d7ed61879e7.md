# abs_weightedMoebius_not_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9947c0a84cc53c3e7258e08596fe1e0c71d628c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:466b4131-f344-904e-38d7-f769e25b2e6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8543f57-eb9b-0548-c245-4212e36f1a27",
  "kind": "theorem",
  "lexical_name": "abs_weightedMoebius_not_summable",
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
  "slug": "abs-weightedmoebius-not-summable--600edd2a8e5b2d7ed61879e7",
  "source": {
    "blob": "c9947c0a84cc53c3e7258e08596fe1e0c71d628c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:600edd2a8e5b2d7ed61879e747ac45cca03ad93b1dc06087dcb4d00a78092cad",
  "verification": {
    "reference": "docs/verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8543f57-eb9b-0548-c245-4212e36f1a27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_weightedMoebius_not_summable :
    ¬ Summable (fun d : ℕ ↦ |weightedMoebius d|) := by
  intro h
  apply not_summable_one_div_on_primes
  apply h.of_nonneg_of_le
  · intro d
    exact Set.indicator_nonneg (fun _ _ ↦ by positivity) _
  · exact prime_reciprocal_le_abs_weightedMoebius

/-- Including the zeroth coefficient does not alter an unsigned inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9947c0a84cc53c3e7258e08596fe1e0c71d628c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
