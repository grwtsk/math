# deriv_thetaTail_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "081f1025daa730b30a5d2f8ad44acbb8f15f3028",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a87b6e9b-55a4-fb04-e983-6e7ddacefb66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8835acc-f661-d922-8711-45f47eeb6099",
  "kind": "theorem",
  "lexical_name": "deriv_thetaTail_integrableOn",
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
  "slug": "deriv-thetatail-integrableon--10499145c97cfba3bba7f905",
  "source": {
    "blob": "081f1025daa730b30a5d2f8ad44acbb8f15f3028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10499145c97cfba3bba7f90528c8b5a6bcaccafd1badb4ab7d3cf494fd17cdc3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8835acc-f661-d922-8711-45f47eeb6099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_thetaTail_integrableOn (r : ℕ) :
    IntegrableOn (deriv (thetaTail r)) (Ici (0 : ℝ)) := by
  cases r with
  | zero => simpa only [thetaTail, pow_zero, mul_one] using deriv_thetaPhi_poly_integrableOn 0
  | succ r =>
      rw [deriv_thetaTail_succ]
      exact (thetaTail_integrableOn r).neg

/-- Exact first-tail recursion, in the same set-integral convention as the source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `081f1025daa730b30a5d2f8ad44acbb8f15f3028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
