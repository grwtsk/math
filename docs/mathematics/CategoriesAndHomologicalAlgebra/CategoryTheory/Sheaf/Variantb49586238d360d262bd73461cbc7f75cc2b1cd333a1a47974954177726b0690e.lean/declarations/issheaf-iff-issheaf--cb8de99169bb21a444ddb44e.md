# isSheaf_iff_isSheaf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdaf7b1d-92fc-c3db-3cc9-7b52dfe9323b",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf'",
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
  "slug": "issheaf-iff-issheaf--cb8de99169bb21a444ddb44e",
  "source": {
    "blob": "6480f3063939ca085691c063fbfc1eebe3957573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 641,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb8de99169bb21a444ddb44eff1e18464835dba00e2681ebd597e870a59bef84",
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

Occurrence: `result:cdaf7b1d-92fc-c3db-3cc9-7b52dfe9323b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheaf' : IsSheaf J P' ↔ IsSheaf' J P' := by
  constructor
  · intro h U R hR
    refine' ⟨_⟩
    apply coyonedaJointlyReflectsLimits
    intro X
    have q : Presieve.IsSheafFor (P' ⋙ coyoneda.obj X) _ := h X.unop _ hR
    rw [← Presieve.isSheafFor_iff_generate] at q
    rw [Equalizer.Presieve.sheaf_condition] at q
    replace q := Classical.choice q
    apply (isSheafForIsSheafFor' _ _ _ _).symm q
  · intro h U X S hS
    rw [Equalizer.Presieve.sheaf_condition]
    refine' ⟨_⟩
    refine' isSheafForIsSheafFor' _ _ _ _ _
    letI := preservesSmallestLimitsOfPreservesLimits (coyoneda.obj (op U))
    apply isLimitOfPreserves
    apply Classical.choice (h _ S.arrows _)
    simpa
#align category_theory.presheaf.is_sheaf_iff_is_sheaf' CategoryTheory.Presheaf.isSheaf_iff_isSheaf'

end

section Concrete

variable [HasPullbacks C]

/--
For a concrete category `(A, s)` where the forgetful functor `s : A ⥤ Type v` preserves limits and
reflects isomorphisms, and `A` has limits, an `A`-valued presheaf `P : Cᵒᵖ ⥤ A` is a sheaf iff its
underlying `Type`-valued presheaf `P ⋙ s : Cᵒᵖ ⥤ Type` is a sheaf.

Note this lemma applies for "algebraic" categories, eg groups, abelian groups and rings, but not
for the category of topological spaces, topological rings, etc since reflecting isomorphisms doesn't
hold.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb49586238d360d262bd73461cbc7f75cc2b1cd333a1a47974954177726b0690e.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6480f3063939ca085691c063fbfc1eebe3957573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
