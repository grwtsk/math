# toFunBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f5d661212315a1bdab32bfb828dd866ddc37281a32e09124cb8533c727ff4f0",
  "kind": "def",
  "lexical_name": "toFunBilinear",
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
  "slug": "tofunbilinear--e8f0b0302879e3d514d34c25",
  "source": {
    "blob": "809ffe33a6ac13769ad45494e059bca675814709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8f0b0302879e3d514d34c2557e37f3837fe36430573786b48eb2be88242a642",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f5d661212315a1bdab32bfb828dd866ddc37281a32e09124cb8533c727ff4f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFunBilinear : A →ₗ[R] Matrix n n R →ₗ[R] Matrix n n A :=
  (Algebra.lsmul R R (Matrix n n A)).toLinearMap.compl₂ (Algebra.linearMap R A).mapMatrix

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant35b9a34ba9f4b89973acf0be4063bba4498fdc484917d158fcf10e3c8c8c2e3c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809ffe33a6ac13769ad45494e059bca675814709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
