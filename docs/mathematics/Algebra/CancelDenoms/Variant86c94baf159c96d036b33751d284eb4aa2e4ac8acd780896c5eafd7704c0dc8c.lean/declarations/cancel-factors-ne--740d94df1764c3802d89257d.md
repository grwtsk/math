# cancel_factors_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5654e0c69f7359b68727fa25b7b1c229f961ae90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd3d6fea-3df8-ffe2-75b2-b71ee37b1559",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c16759ae-ec5d-9f75-4a39-7f3a7ff351c9",
  "kind": "theorem",
  "lexical_name": "cancel_factors_ne",
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
  "slug": "cancel-factors-ne--740d94df1764c3802d89257d",
  "source": {
    "blob": "5654e0c69f7359b68727fa25b7b1c229f961ae90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 98,
    "path": "GRWTSK/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740d94df1764c3802d89257d89a6d4b0161bbd10536d6930382b867220aa3c73",
  "verification": {
    "reference": "docs/verification/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c16759ae-ec5d-9f75-4a39-7f3a7ff351c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_factors_ne {α} [Field α] {a b ad bd a' b' gcd : α} (ha : ad * a = a')
    (hb : bd * b = b') (had : ad ≠ 0) (hbd : bd ≠ 0) (hgcd : gcd ≠ 0) :
    (a ≠ b) = (1 / gcd * (bd * a') ≠ 1 / gcd * (ad * b')) := by
  classical
  rw [eq_iff_iff, not_iff_not, cancel_factors_eq ha hb had hbd hgcd]

/-! ### Computing cancelation factors -/

/--
`findCancelFactor e` produces a natural number `n`, such that multiplying `e` by `n` will
be able to cancel all the numeric denominators in `e`. The returned `Tree` describes how to
distribute the value `n` over products inside `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5654e0c69f7359b68727fa25b7b1c229f961ae90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
