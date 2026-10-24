# toNerve₂.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a820a84086efeb9c4a13ef53243ccbac024e9f7d7516a054dd40feed29357873",
  "kind": "def",
  "lexical_name": "toNerve₂.mk",
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
  "slug": "tonerve-mk--41d9f77c92bd4e3f0778b41e",
  "source": {
    "blob": "f1b66ba77515d913ff2099e28f4f5e1ffffb26a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 260,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41d9f77c92bd4e3f0778b41ec31b12f9bb8a38c39a9cae2adcd0af6c9a7cff74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a820a84086efeb9c4a13ef53243ccbac024e9f7d7516a054dd40feed29357873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNerve₂.mk : X ⟶ nerveFunctor₂.obj (Cat.of C) where
  app n := toNerve₂.mk.app F n.unop
  naturality _ _ f := MorphismProperty.of_eq_top (toNerve₂.mk_naturality F hyp) f.unop

end

section

variable (F : SSet.oneTruncation₂.obj X ⟶ SSet.oneTruncation₂.obj (nerveFunctor₂.obj (Cat.of C)))
variable (hyp : (φ : X _⦋2⦌₂) →
            (F ≫ (OneTruncation₂.ofNerve₂.natIso.app (Cat.of C)).hom).map (ev02₂ φ) =
              CategoryStruct.comp (obj := C)
              ((F ≫ (OneTruncation₂.ofNerve₂.natIso.app (Cat.of C)).hom).map (ev01₂ φ))
              ((F ≫ (OneTruncation₂.ofNerve₂.natIso.app (Cat.of C)).hom).map (ev12₂ φ)))

/-- An alternate version of `toNerve₂.mk`, which constructs a map of 2-truncated simplicial sets
`X ⟶ nerveFunctor₂.obj (Cat.of C)` from the underlying refl prefunctor under a composition
hypothesis, where that prefunctor the central hypothesis is conjugated by the isomorphism
`nerve₂Adj.NatIso.app C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b66ba77515d913ff2099e28f4f5e1ffffb26a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
