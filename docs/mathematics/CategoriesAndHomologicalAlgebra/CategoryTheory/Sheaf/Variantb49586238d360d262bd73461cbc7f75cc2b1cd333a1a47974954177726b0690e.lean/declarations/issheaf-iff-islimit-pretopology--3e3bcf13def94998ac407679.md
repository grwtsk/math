# isSheaf_iff_isLimit_pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a55674b3-72e9-29fe-3a94-e513ab22d2c9",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isLimit_pretopology",
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
  "slug": "issheaf-iff-islimit-pretopology--3e3bcf13def94998ac407679",
  "source": {
    "blob": "6480f3063939ca085691c063fbfc1eebe3957573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3bcf13def94998ac407679d981b4c203c3a745f2ef80aee6091ec05b1cca3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a55674b3-72e9-29fe-3a94-e513ab22d2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isLimit_pretopology [HasPullbacks C] (K : Pretopology C) :
    IsSheaf (K.toGrothendieck C) P ↔
      ∀ ⦃X : C⦄ (R : Presieve X),
        R ∈ K X → Nonempty (IsLimit (P.mapCone (generate R).arrows.cocone.op)) := by
  dsimp [IsSheaf]
  simp_rw [isSheaf_pretopology]
  exact
    ⟨fun h X R hR => (isLimit_iff_isSheafFor_presieve P R).2 fun E => h E.unop R hR,
      fun h E X R hR => (isLimit_iff_isSheafFor_presieve P R).1 (h R hR) (op E)⟩
#align category_theory.presheaf.is_sheaf_iff_is_limit_pretopology CategoryTheory.Presheaf.isSheaf_iff_isLimit_pretopology

end LimitSheafCondition

variable {J}

/-- This is a wrapper around `Presieve.IsSheafFor.amalgamate` to be used below.
  If `P`s a sheaf, `S` is a cover of `X`, and `x` is a collection of morphisms from `E`
  to `P` evaluated at terms in the cover which are compatible, then we can amalgamate
  the `x`s to obtain a single morphism `E ⟶ P.obj (op X)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6480f3063939ca085691c063fbfc1eebe3957573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
