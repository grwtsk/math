# finiteSpectralDeterminant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01a6004970d937a9f7a64ddb71dd4cb3f9e92b0a66cf04bac26b8ab5194c1190",
  "kind": "def",
  "lexical_name": "finiteSpectralDeterminant",
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
  "slug": "finitespectraldeterminant--853d3049000e0cb4956cdf8e",
  "source": {
    "blob": "6ce081495ce84f018bbc93e30f8511df8ce3b237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:853d3049000e0cb4956cdf8e8294a31e49ffcdf4c4f225f7d9100593b5a8c6cb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01a6004970d937a9f7a64ddb71dd4cb3f9e92b0a66cf04bac26b8ab5194c1190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteSpectralDeterminant
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (parameter : ℂ)
    (state : Bitfield system.bits) : ℂ :=
  Matrix.det
    (((parameter - (1 / 2 : ℂ)) •
        (1 :
          Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ)) -
      Complex.I • spectral.operator state)

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variant38cb59fbd5751f145b7d8e77045fc558f22efe93b54adfaf75a1381c593a5b1e.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce081495ce84f018bbc93e30f8511df8ce3b237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
