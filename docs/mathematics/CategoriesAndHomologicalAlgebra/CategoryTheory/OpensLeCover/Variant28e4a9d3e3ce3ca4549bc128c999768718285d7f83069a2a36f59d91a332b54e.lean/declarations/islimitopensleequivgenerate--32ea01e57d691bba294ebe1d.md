# isLimitOpensLeEquivGenerate₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bffc059307c200d11cbb5c1f5147990c97bda4f7238929b394406a94a623bf16",
  "kind": "def",
  "lexical_name": "isLimitOpensLeEquivGenerate₁",
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
  "slug": "islimitopensleequivgenerate--32ea01e57d691bba294ebe1d",
  "source": {
    "blob": "b278c370ba13810a420b9748e250dc741535c4d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant28e4a9d3e3ce3ca4549bc128c999768718285d7f83069a2a36f59d91a332b54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32ea01e57d691bba294ebe1df4c5b8f3d131061cdabe4be91f2f2210d42b2e6e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant28e4a9d3e3ce3ca4549bc128c999768718285d7f83069a2a36f59d91a332b54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bffc059307c200d11cbb5c1f5147990c97bda4f7238929b394406a94a623bf16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOpensLeEquivGenerate₁ :
    IsLimit (F.mapCone (opensLeCoverCocone U).op) ≃
      IsLimit (F.mapCone (Sieve.generate (presieveOfCoveringAux U Y)).arrows.cocone.op) :=
  (IsLimit.whiskerEquivalenceEquiv (generateEquivalenceOpensLe U hY).op).trans
    (IsLimit.equivIsoLimit (whiskerIsoMapGenerateCocone F U hY))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_limit_opens_le_equiv_generate₁ TopCat.Presheaf.isLimitOpensLeEquivGenerate₁

/-- Given a presheaf `F` on the topological space `X` and a presieve `R` whose generated sieve
    is covering for the associated Grothendieck topology (equivalently, the presieve is covering
    for the associated pretopology), the natural cone associated to `F` and the family of opens
    associated to `R` is a limit cone iff the natural cone associated to `F` and the generated
    sieve is a limit cone.
    Since only the existence of a 1-1 correspondence will be used, the exact definition does
    not matter, so tactics are used liberally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant28e4a9d3e3ce3ca4549bc128c999768718285d7f83069a2a36f59d91a332b54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant28e4a9d3e3ce3ca4549bc128c999768718285d7f83069a2a36f59d91a332b54e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b278c370ba13810a420b9748e250dc741535c4d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
