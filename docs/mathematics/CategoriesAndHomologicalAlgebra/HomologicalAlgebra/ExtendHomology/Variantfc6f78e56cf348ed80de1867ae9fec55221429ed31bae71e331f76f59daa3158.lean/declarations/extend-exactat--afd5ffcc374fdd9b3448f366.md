# extend_exactAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72deb9ec-ea74-ead1-6388-b84b843943fd",
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
  "slug": "extend-exactat--afd5ffcc374fdd9b3448f366",
  "source": {
    "blob": "6d28939108e240243c1843b6570c9ed6de78e111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 297,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd5ffcc374fdd9b3448f366bc5d80b689cea650c9e64429880583ee51c72e8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72deb9ec-ea74-ead1-6388-b84b843943fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–306.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtendHomology/Variantfc6f78e56cf348ed80de1867ae9fec55221429ed31bae71e331f76f59daa3158.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d28939108e240243c1843b6570c9ed6de78e111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
