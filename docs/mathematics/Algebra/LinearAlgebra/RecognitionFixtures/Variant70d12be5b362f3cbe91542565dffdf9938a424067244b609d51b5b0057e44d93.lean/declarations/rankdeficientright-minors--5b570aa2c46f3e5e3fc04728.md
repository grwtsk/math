# rankDeficientRight_minors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5d0d820-36ec-0af7-d47d-68c0d3b7d973",
  "kind": "theorem",
  "lexical_name": "rankDeficientRight_minors",
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
  "slug": "rankdeficientright-minors--5b570aa2c46f3e5e3fc04728",
  "source": {
    "blob": "082afe71ee54aa7f849b1b3c5772b7f9b1888a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b570aa2c46f3e5e3fc0472874e0b4c1bf86c09ecf0d720029cb59b571c73ba9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5d0d820-36ec-0af7-d47d-68c0d3b7d973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankDeficientRight_minors (c : Fin 2 → Fin 2) :
    columnMinor rankDeficientRight c = 0 := by
  simp [columnMinor, columnSubmatrix, Matrix.det_fin_two, rankDeficientRight]

/-- Equal zero maximal-minor vectors do not determine rank-deficient row spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082afe71ee54aa7f849b1b3c5772b7f9b1888a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
