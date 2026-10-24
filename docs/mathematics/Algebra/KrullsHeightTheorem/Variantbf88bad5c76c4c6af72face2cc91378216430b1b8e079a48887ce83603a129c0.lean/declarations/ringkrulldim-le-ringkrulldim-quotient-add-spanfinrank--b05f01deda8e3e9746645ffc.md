# ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10b5d717-65f7-8c0a-945b-3089ae01af9a",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank",
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
  "slug": "ringkrulldim-le-ringkrulldim-quotient-add-spanfinrank--b05f01deda8e3e9746645ffc",
  "source": {
    "blob": "94eba5d2ebfd024e76812a0c01883d73bfef1add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 401,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05f01deda8e3e9746645ffc7ccd595fa64e7403bfbef20db9532f89df6b20f0",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10b5d717-65f7-8c0a-945b-3089ae01af9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank (I : Ideal R)
    (h : I ≤ Ring.jacobson R) :
    ringKrullDim R ≤ ringKrullDim (R ⧸ I) + I.spanFinrank := by
  nontriviality R
  rw [ringKrullDim_le_iff_isMaximal_height_le]
  intro m hm
  exact height_le_ringKrullDim_quotient_add_spanFinrank <|
    le_trans h <| Ring.jacobson_le_of_isMaximal m

/-- If `p` is a prime ideal containing `s`, the height of `p` is bounded
by the sum of the height of the image of `p` in `R ⧸ (s)` and the cardinality of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94eba5d2ebfd024e76812a0c01883d73bfef1add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
