# emptyUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36a14ab0ae8fab203a2df2314fd6d8ff855aa7c3fbe929bef58e380ba3ec920b",
  "kind": "instance",
  "lexical_name": "emptyUnique",
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
  "slug": "emptyunique--71476d66c7f653cc43646cc9",
  "source": {
    "blob": "8981744fc52981243bc275ea79f5ad380c24d608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 233,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71476d66c7f653cc43646cc9d88388ef98233a8a4f6b013591899d5281f29d2d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36a14ab0ae8fab203a2df2314fd6d8ff855aa7c3fbe929bef58e380ba3ec920b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance emptyUnique [Subsingleton M] [IsEmpty ι] : Unique (Basis ι R M) where
  default := Basis.empty M
  uniq := fun _ => congr_arg ofRepr <| Subsingleton.elim _ _

end Empty

section NoZeroSMulDivisors

-- Can't be an instance because the basis can't be inferred.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8981744fc52981243bc275ea79f5ad380c24d608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
