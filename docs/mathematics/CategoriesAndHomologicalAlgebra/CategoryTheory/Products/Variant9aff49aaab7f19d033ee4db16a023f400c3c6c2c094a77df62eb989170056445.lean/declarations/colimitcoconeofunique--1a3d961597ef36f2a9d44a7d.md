# colimitCoconeOfUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0eebb4d02cd852d3088229f0b34eb29ba5b4b79ce8fcaaacd96a5ebcff38d08",
  "kind": "def",
  "lexical_name": "colimitCoconeOfUnique",
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
  "slug": "colimitcoconeofunique--1a3d961597ef36f2a9d44a7d",
  "source": {
    "blob": "e1c7a3692df46db3452b21d48c6f658eb8c28c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 541,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a3d961597ef36f2a9d44a7db1027419e11886ac1829c62ab55ef30255a30f00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0eebb4d02cd852d3088229f0b34eb29ba5b4b79ce8fcaaacd96a5ebcff38d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeOfUnique : ColimitCocone (Discrete.functor f)
    where
  cocone :=
    { pt := f default
      ι := Discrete.natTrans (fun ⟨j⟩ => eqToHom (by
        dsimp
        congr
        apply Subsingleton.elim)) }
  isColimit :=
    { desc := fun s => s.ι.app default
      fac := fun s j => by
        have h := Subsingleton.elim j default
        subst h
        apply Category.id_comp
      uniq := fun s m w => by
        specialize w default
        erw [Category.id_comp] at w
        exact w }
#align category_theory.limits.colimit_cocone_of_unique CategoryTheory.Limits.colimitCoconeOfUnique

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1c7a3692df46db3452b21d48c6f658eb8c28c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
