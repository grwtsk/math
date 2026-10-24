# smulCommClass_symm_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cc3371e9ee3c725fdee7aeb1e4367af63731177775f250601b2c1b8ff360151",
  "kind": "instance",
  "lexical_name": "smulCommClass_symm_self",
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
  "slug": "smulcommclass-symm-self--77a86af5a91df55d2afee31d",
  "source": {
    "blob": "422ac6fd1b47b0f563d08f3a3f14bc6bb7724c43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 305,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77a86af5a91df55d2afee31da0c258b51c556e46e298be771ef0fd823e69729e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cc3371e9ee3c725fdee7aeb1e4367af63731177775f250601b2c1b8ff360151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass_symm_self [SMulCommClass S R S] : SMulCommClass S[M] R S[M] :=
  have := SMulCommClass.symm S R S; .symm ..

end NonUnitalNonAssocAlgebra

section Submodule

variable [CommSemiring S] [Monoid M]
variable {V : Type*} [AddCommMonoid V]
variable [Module S V] [Module S[M] V] [IsScalarTower S S[M] V]

/-- A submodule over `S` which is stable under scalar multiplication by elements of `M` is a
submodule over `S[M]` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant3661966ad493949463b99c35c7771bc0d3cb0574563d6a4b001bca69ef1b4dcf.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422ac6fd1b47b0f563d08f3a3f14bc6bb7724c43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
