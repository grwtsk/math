# alternatingConstHomologyDataOdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7292474a559f95e6af677e973000c503dbc26436b5f2b0ff01e9de80baf6a9f",
  "kind": "def",
  "lexical_name": "alternatingConstHomologyDataOdd",
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
  "slug": "alternatingconsthomologydataodd--4a16b4c6cb2467b31dadbb10",
  "source": {
    "blob": "450d4490a88b041f0dcc8dc6c551f29a8a562375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a16b4c6cb2467b31dadbb10c1743d6a73018c3e6186349e05f4447e9b65d697",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7292474a559f95e6af677e973000c503dbc26436b5f2b0ff01e9de80baf6a9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatingConstHomologyDataOdd (X : C) (n : ℕ) (hn : Odd n) :
    ((alternatingConst.obj X).sc n).HomologyData :=
  .ofIsColimitCokernelCofork _ (by simp [hn]) _ (Limits.zeroCokernelOfZeroCancel _ (by simp [hn]))

/-- The `n`-th homology of the alternating constant complex is `X` for `n = 0`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d4490a88b041f0dcc8dc6c551f29a8a562375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
