# colim.mapShortComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f567ccf40bc58204ccf9e5c84e9af5447500f8b861eabd84624be1acc59448cc",
  "kind": "def",
  "lexical_name": "colim.mapShortComplex",
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
  "slug": "colim-mapshortcomplex--4519e4f4486ab01bb95a9428",
  "source": {
    "blob": "2ef06ea469b077cb29b2783324dcd675164e9f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 99,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4519e4f4486ab01bb95a94288e5a6f794b478f11368de30577371be5bee20854",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f567ccf40bc58204ccf9e5c84e9af5447500f8b861eabd84624be1acc59448cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colim.mapShortComplex : ShortComplex C :=
  ShortComplex.mk f g (hc₁.hom_ext (fun j ↦ by
    dsimp
    rw [reassoc_of% (hf j), hg j, comp_zero, ← NatTrans.comp_app_assoc, S.zero,
      zero_app, zero_comp]))

variable {S c₂ c₃}

include hc₂ hc₃ hS in
/-- Assuming `HasExactColimitsOfShape J C`, this lemma rephrases the exactness
of the functor `colim : (J ⥤ C) ⥤ C` by saying that if `S : ShortComplex (J ⥤ C)`
is exact, then the short complex obtained by taking the colimits is exact,
where we allow the replacement of the chosen colimit cocones of the
colimit API by arbitrary colimit cocones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef06ea469b077cb29b2783324dcd675164e9f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
