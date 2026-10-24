# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f12e7bb1a2671f44432818eafd57001c7ddf8b3e9fa916ab9e9b36392f29acf",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2af66e1fca829ddee6fa59e6",
  "source": {
    "blob": "9f81f1bc696d830ad15a4ceaeab384ac63717089",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 530,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2af66e1fca829ddee6fa59e6e7e88b4162a6806fc8e5e41ea9eec5149a59fff6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correspondence/Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f12e7bb1a2671f44432818eafd57001c7ddf8b3e9fa916ab9e9b36392f29acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    BitMatrix.Runtime.Semantics.foreignPrecessionResult
      (.finite 1) .positiveInfinity = .error .nonfiniteInput :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correspondence/Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f81f1bc696d830ad15a4ceaeab384ac63717089` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
