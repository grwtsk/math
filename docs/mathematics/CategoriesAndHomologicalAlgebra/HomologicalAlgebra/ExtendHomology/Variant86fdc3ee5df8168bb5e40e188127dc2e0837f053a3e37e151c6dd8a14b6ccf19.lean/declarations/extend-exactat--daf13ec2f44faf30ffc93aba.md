# extend_exactAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e98bdf05-0df4-2b2e-0da0-2658e75e5e7a",
  "kind": "lemma",
  "lexical_name": "extend_exactAt",
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
  "slug": "extend-exactat--daf13ec2f44faf30ffc93aba",
  "source": {
    "blob": "8fe20afadf6a8aaaf5c8d8bdfb8991630574849b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant86fdc3ee5df8168bb5e40e188127dc2e0837f053a3e37e151c6dd8a14b6ccf19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daf13ec2f44faf30ffc93abaeb059007b0736d9f4387946ea9a35ec8932eb25e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant86fdc3ee5df8168bb5e40e188127dc2e0837f053a3e37e151c6dd8a14b6ccf19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e98bdf05-0df4-2b2e-0da0-2658e75e5e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extend_exactAt (j' : ι') (hj' : ∀ j, e.f j ≠ j') :
    (K.extend e).ExactAt j' :=
  exactAt_of_isSupported _ e j' hj'

section

variable {j : ι} {j' : ι'} (hj' : e.f j = j') [K.HasHomology j] [L.HasHomology j]
  [(K.extend e).HasHomology j'] [(L.extend e).HasHomology j']

/-- The isomorphism `(K.extend e).cycles j' ≅ K.cycles j` when `e.f j = j'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant86fdc3ee5df8168bb5e40e188127dc2e0837f053a3e37e151c6dd8a14b6ccf19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variant86fdc3ee5df8168bb5e40e188127dc2e0837f053a3e37e151c6dd8a14b6ccf19.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe20afadf6a8aaaf5c8d8bdfb8991630574849b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
