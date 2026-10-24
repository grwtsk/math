# neg_one_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98a2e08f-9578-732a-09cf-e4bdde82eb1c",
  "kind": "lemma",
  "lexical_name": "neg_one_sq",
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
  "slug": "neg-one-sq--124ec6d56568afe2ca2d97d4",
  "source": {
    "blob": "a390aa21fd9e55dd62f1951aa87e1c4a392eff92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:124ec6d56568afe2ca2d97d4900030ca6ef8c611a9bb8ee55045e405c93577da",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98a2e08f-9578-732a-09cf-e4bdde82eb1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma neg_one_sq : (-1 : R) ^ 2 = 1 := by simp [neg_sq, one_pow]

alias neg_pow_two := neg_sq

alias neg_one_pow_two := neg_one_sq

end HasDistribNeg

section Ring
variable [Ring R] {a : R} {n : ℕ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variantbb67a041bff6d567289f373080621cf9621639d3ef8fbd0a1eac0d3786ce3e37.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a390aa21fd9e55dd62f1951aa87e1c4a392eff92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
