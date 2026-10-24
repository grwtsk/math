# differentials

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e711bb8aa2d6727d63e593d739e1a7ace6fa255696c48bb7d2b8bffbe5260385",
  "kind": "def",
  "lexical_name": "differentials",
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
  "slug": "differentials--db5e57f4dd3b320b6f436d1a",
  "source": {
    "blob": "0be856e048ccc8d60fa91b0e668094e08bb8e163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db5e57f4dd3b320b6f436d1a0deefc5f785f82a9180a89bf51d428675d17dd55",
  "verification": {
    "reference": "docs/verification/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e711bb8aa2d6727d63e593d739e1a7ace6fa255696c48bb7d2b8bffbe5260385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def differentials : Module.Presentation S (Ω[S⁄R]) where
  G := pres.vars
  R := pres.rels
  relation := _
  toSolution := differentialsSolution pres
  toIsPresentation := pres.differentialsSolution_isPresentation

end Algebra.Presentation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Differentials/Variantf35ce58e2ce5cf78262d71c656ab4a6db6f9beba10523eb5e5a24643cf0e91d8.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0be856e048ccc8d60fa91b0e668094e08bb8e163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
