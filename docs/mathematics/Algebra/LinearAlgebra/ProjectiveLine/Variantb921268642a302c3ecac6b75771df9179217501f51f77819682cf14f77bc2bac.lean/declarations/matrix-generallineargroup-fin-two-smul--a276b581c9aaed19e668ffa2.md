# Matrix.GeneralLinearGroup.fin_two_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e1e9d56-b01e-99cf-61a1-39e13ed278ca",
  "kind": "lemma",
  "lexical_name": "Matrix.GeneralLinearGroup.fin_two_smul",
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
  "slug": "matrix-generallineargroup-fin-two-smul--a276b581c9aaed19e668ffa2",
  "source": {
    "blob": "9dc5f93d2210f8b4e9c823f8c7bd706377d32100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantb921268642a302c3ecac6b75771df9179217501f51f77819682cf14f77bc2bac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a276b581c9aaed19e668ffa2ca8ab984b0a6918e7895d8b6e0f1b7e7e014f431",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveLine/Variantb921268642a302c3ecac6b75771df9179217501f51f77819682cf14f77bc2bac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e1e9d56-b01e-99cf-61a1-39e13ed278ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Matrix.GeneralLinearGroup.fin_two_smul {R : Type*} [CommRing R]
    (g : GL (Fin 2) R) (v : Fin 2 → R) :
    g • v = ![g 0 0 * v 0 + g 0 1 * v 1, g 1 0 * v 0 + g 1 1 * v 1] := by
  simp [Units.smul_def]

@[deprecated "use Fin 2 → R instead" (since := "2026-04-19")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveLine/Variantb921268642a302c3ecac6b75771df9179217501f51f77819682cf14f77bc2bac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveLine/Variantb921268642a302c3ecac6b75771df9179217501f51f77819682cf14f77bc2bac.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc5f93d2210f8b4e9c823f8c7bd706377d32100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
