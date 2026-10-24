# isLimitOpensLeEquivGenerate₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8faa88ec2ec634c917e1eb2bc832664f389b3e321729071ce8ff4c45510e27",
  "kind": "def",
  "lexical_name": "isLimitOpensLeEquivGenerate₂",
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
  "slug": "islimitopensleequivgenerate--6b0f2008af7db962b421d20c",
  "source": {
    "blob": "6d8133a3499e99c7a255d7dc0d88ec0643a10378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b0f2008af7db962b421d20c6fdc4097ee5cf4dc42503e3a76060f04a26c22f2",
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

Occurrence: `declaration:3a8faa88ec2ec634c917e1eb2bc832664f389b3e321729071ce8ff4c45510e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOpensLeEquivGenerate₂ (R : Presieve Y)
    (hR : Sieve.generate R ∈ Opens.grothendieckTopology X Y) :
    IsLimit (F.mapCone (opensLeCoverCocone (coveringOfPresieve Y R)).op) ≃
      IsLimit (F.mapCone (Sieve.generate R).arrows.cocone.op) := by
  convert isLimitOpensLeEquivGenerate₁ F (coveringOfPresieve Y R)
      (coveringOfPresieve.iSup_eq_of_mem_grothendieck Y R hR).symm using 1
  rw [covering_presieve_eq_self R]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_limit_opens_le_equiv_generate₂ TopCat.Presheaf.isLimitOpensLeEquivGenerate₂

/-- A presheaf `(opens X)ᵒᵖ ⥤ C` on a topological space `X` is a sheaf on the site `opens X` iff
    it satisfies the `is_sheaf_opens_le_cover` sheaf condition. The latter is not the
    official definition of sheaves on spaces, but has the advantage that it does not
    require `has_products C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant63b54707caecd05846b5c7f02f1610bca85e6d94ea5f0adfac06f976c5c5b5a0.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8133a3499e99c7a255d7dc0d88ec0643a10378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
