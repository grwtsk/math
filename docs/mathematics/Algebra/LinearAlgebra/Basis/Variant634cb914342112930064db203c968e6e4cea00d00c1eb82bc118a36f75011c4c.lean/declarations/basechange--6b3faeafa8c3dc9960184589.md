# baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4aa4040e83c507355ffdfd062a6024b3a420dc10fb1b6c565f313c0b7b1070",
  "kind": "def",
  "lexical_name": "baseChange",
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
  "slug": "basechange--6b3faeafa8c3dc9960184589",
  "source": {
    "blob": "a0724b492e51e77af5e4c439ce77714df427f929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b3faeafa8c3dc9960184589ddea913062d218cf3d5c7bd62399de0aef77f4eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4aa4040e83c507355ffdfd062a6024b3a420dc10fb1b6c565f313c0b7b1070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def baseChange (b : Basis ι R M) : Basis ι S (S ⊗[R] M) :=
  (tensorProduct (.singleton Unit S) b).reindex (Equiv.punitProd ι)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0724b492e51e77af5e4c439ce77714df427f929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
