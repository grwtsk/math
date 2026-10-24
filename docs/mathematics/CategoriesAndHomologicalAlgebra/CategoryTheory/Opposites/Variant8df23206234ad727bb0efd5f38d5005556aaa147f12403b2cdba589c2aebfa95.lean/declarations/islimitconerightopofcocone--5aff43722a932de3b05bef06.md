# isLimitConeRightOpOfCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:280f5c46e95d0da9d385af76237965d0609e767a47f8b6779471e084b06b70f0",
  "kind": "def",
  "lexical_name": "isLimitConeRightOpOfCocone",
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
  "slug": "islimitconerightopofcocone--5aff43722a932de3b05bef06",
  "source": {
    "blob": "1e32cf305ee43f97db9e5bda7154085b9c25aee8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aff43722a932de3b05bef0691a840cbe599beabd40a8150a24075b6982ebe45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:280f5c46e95d0da9d385af76237965d0609e767a47f8b6779471e084b06b70f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitConeRightOpOfCocone (F : Jᵒᵖ ⥤ C) {c : Cocone F} (hc : IsColimit c) :
    IsLimit (coneRightOpOfCocone c)
    where
  lift s := (hc.desc (coconeOfConeRightOp s)).op
  fac s j := Quiver.Hom.unop_inj (by simp)
  uniq s m w := by
    refine' Quiver.Hom.unop_inj (hc.hom_ext fun j => Quiver.Hom.op_inj _)
    simpa only [Quiver.Hom.unop_op, IsColimit.fac] using w (unop j)
#align category_theory.limits.is_limit_cone_right_op_of_cocone CategoryTheory.Limits.isLimitConeRightOpOfCocone

/-- Turn a limit for `F : Jᵒᵖ ⥤ C` into a colimit for `F.rightOp : J ⥤ Cᵒᵖ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant8df23206234ad727bb0efd5f38d5005556aaa147f12403b2cdba589c2aebfa95.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e32cf305ee43f97db9e5bda7154085b9c25aee8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
