# goldbachCount_pos_of_rational_arc_sum_truncated_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9befa30-2376-2d76-0d1f-2c659cb616bb",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_rational_arc_sum_truncated_certificate",
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
  "slug": "goldbachcount-pos-of-rational-arc-sum-truncated-certificate--0d34911b22a96c48f3cc3900",
  "source": {
    "blob": "fc9223e70ae6b375dea489bc92763cbb390bcf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d34911b22a96c48f3cc3900a94ee1478fea6917e816dbbf8dfa6168f15db719",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9befa30-2376-2d76-0d1f-2c659cb616bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_rational_arc_sum_truncated_certificate
    {arcQ localQ N : ℕ}
    (hscale : 2 * arcQ ^ 2 < N + 1)
    (scale localError minorError : ℝ)
    (hmajorLower :
      goldbachTruncatedMainScale localQ N scale - localError ≤
        (∑ aq ∈ goldbachRationalArcIndices arcQ,
          goldbachSingleRationalArcContribution arcQ N aq).re)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤ minorError)
    (hmargin :
      localError + minorError <
        goldbachTruncatedMainScale localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_rational_truncated_certificate
    (arcQ := arcQ) (localQ := localQ) (N := N)
    scale localError minorError
  · rw [goldbachRationalMajorContribution_eq_sum hscale]
    exact hmajorLower
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc9223e70ae6b375dea489bc92763cbb390bcf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
