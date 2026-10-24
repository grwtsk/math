# iteratedDeriv_LSeries_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "993343642cdb493aedc58554b9465952e6f936f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94b046b2-7dff-aed4-d0d6-dcd9d02b2ae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7b9c582-d0ff-6db1-9919-d5bd6eb421f5",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_LSeries_alternating",
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
  "slug": "iteratedderiv-lseries-alternating--e3f971a4c4285bd5aebdffdc",
  "source": {
    "blob": "993343642cdb493aedc58554b9465952e6f936f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3f971a4c4285bd5aebdffdc1d3c81746b892a80899cffddd5d65d46446007a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b9c582-d0ff-6db1-9919-d5bd6eb421f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDeriv_LSeries_alternating (a : ArithmeticFunction ℂ) (hn : ∀ n, 0 ≤ a n) {x : ℝ}
    (h : LSeries.abscissaOfAbsConv a < x) (n : ℕ) :
    0 ≤ (-1) ^ n * iteratedDeriv n (LSeries (a ·)) x :=
  LSeries.iteratedDeriv_alternating hn h n

/-- If all values of a `ℂ`-valued arithmetic function `a` are nonnegative reals and `a 1` is
positive, then `L a x` is positive real for all real `x` larger than `abscissaOfAbsConv a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant97f7dbbe137721c72f469e06ab3d8ae1d9b371c3547077c7fbe294361d7ea9ed.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993343642cdb493aedc58554b9465952e6f936f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
