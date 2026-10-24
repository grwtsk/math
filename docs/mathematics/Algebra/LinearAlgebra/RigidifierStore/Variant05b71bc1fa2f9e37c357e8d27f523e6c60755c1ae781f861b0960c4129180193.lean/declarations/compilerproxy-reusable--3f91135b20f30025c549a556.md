# CompilerProxy.reusable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9694b1b3361a9edff77bf8eb8c4b66673cfa862e85a089c24b17d982361634c2",
  "kind": "def",
  "lexical_name": "CompilerProxy.reusable",
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
  "slug": "compilerproxy-reusable--3f91135b20f30025c549a556",
  "source": {
    "blob": "fb2985bdd38b0ab70948b1da0419e7dc4c533a12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant05b71bc1fa2f9e37c357e8d27f523e6c60755c1ae781f861b0960c4129180193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f91135b20f30025c549a5560caa6df07a3889c4ec1a0295c504f5cf8a9ec2c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RigidifierStore/Variant05b71bc1fa2f9e37c357e8d27f523e6c60755c1ae781f861b0960c4129180193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9694b1b3361a9edff77bf8eb8c4b66673cfa862e85a089c24b17d982361634c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompilerProxy.reusable
    {moduleCount : Nat}
    (previous : CompilerProxy moduleCount)
    (requested : CompileKey) : Prop :=
  previous.compileKey = requested ∧ previous.kernelAccepted = true

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RigidifierStore/Variant05b71bc1fa2f9e37c357e8d27f523e6c60755c1ae781f861b0960c4129180193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RigidifierStore/Variant05b71bc1fa2f9e37c357e8d27f523e6c60755c1ae781f861b0960c4129180193.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2985bdd38b0ab70948b1da0419e7dc4c533a12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
