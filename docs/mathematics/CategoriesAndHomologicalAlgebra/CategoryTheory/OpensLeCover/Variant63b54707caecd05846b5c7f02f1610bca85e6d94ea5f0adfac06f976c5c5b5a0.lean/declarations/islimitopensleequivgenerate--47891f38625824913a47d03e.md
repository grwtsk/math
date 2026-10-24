# isLimitOpensLeEquivGenerate₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d60989d43914e723f12b75e89d7b63ce94f62ca2a6c19d3d2039395d3a499f63",
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
  "slug": "islimitopensleequivgenerate--47891f38625824913a47d03e",
  "source": {
    "blob": "6d8133a3499e99c7a255d7dc0d88ec0643a10378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47891f38625824913a47d03e039dbe97fc64fd005a2fafaec8df7586243656b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d60989d43914e723f12b75e89d7b63ce94f62ca2a6c19d3d2039395d3a499f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8133a3499e99c7a255d7dc0d88ec0643a10378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
