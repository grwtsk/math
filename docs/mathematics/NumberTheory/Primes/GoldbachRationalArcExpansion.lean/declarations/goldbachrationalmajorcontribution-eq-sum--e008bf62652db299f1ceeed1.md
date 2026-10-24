# goldbachRationalMajorContribution_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb777376-16e4-60a4-9c51-5a777201a581",
  "kind": "theorem",
  "lexical_name": "goldbachRationalMajorContribution_eq_sum",
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
  "slug": "goldbachrationalmajorcontribution-eq-sum--e008bf62652db299f1ceeed1",
  "source": {
    "blob": "fc9223e70ae6b375dea489bc92763cbb390bcf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e008bf62652db299f1ceeed1951fe16038c60e9d7ebdd91927b75a486fa56a0a",
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

Occurrence: `result:cb777376-16e4-60a4-9c51-5a777201a581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalMajorContribution_eq_sum
    {Q N : ℕ} (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachRationalMajorContribution Q N =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachSingleRationalArcContribution Q N aq := by
  change
    (∫ x in goldbachRationalMajorArcSet Q N,
      goldbachCircleIntegrand N x) =
      ∑ aq ∈ goldbachRationalArcIndices Q,
        ∫ x in goldbachClippedRationalArc Q N aq,
          goldbachCircleIntegrand N x
  rw [goldbachRationalMajorArcSet_eq_biUnion_clipped]
  exact integral_biUnion_finset
    (goldbachRationalArcIndices Q)
    (fun aq haq =>
      measurable_goldbachClippedRationalArc Q N aq)
    (goldbachClippedRationalArcs_pairwiseDisjoint hscale)
    (fun aq haq =>
      integrableOn_goldbachCircleIntegrand_clipped Q N aq)

/-- The exact major/minor identity with the major term expanded into the
finite disjoint rational-arc sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcExpansion.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc9223e70ae6b375dea489bc92763cbb390bcf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
