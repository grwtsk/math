# toGermMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a23b94d2a42d7f8e9abfafbf85b998be5cef319126282b33650b1098956e23a6",
  "kind": "def",
  "lexical_name": "toGermMonoidHom",
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
  "slug": "togermmonoidhom--0c9194a0044dfd031cb4caf4",
  "source": {
    "blob": "da3f364e9b6f02913a4c456ed87c250f51426478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 780,
    "line": 769,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c9194a0044dfd031cb4caf4e702c4578c3967c0c848ef64be950a0b030dc370",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a23b94d2a42d7f8e9abfafbf85b998be5cef319126282b33650b1098956e23a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–780.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGermMonoidHom : (α →ₘ[μ] γ) →* μ.ae.Germ γ where
  toFun := toGerm
  map_one' := one_toGerm
  map_mul' := mul_toGerm
#align measure_theory.ae_eq_fun.to_germ_monoid_hom MeasureTheory.AEEqFun.toGermMonoidHom
#align measure_theory.ae_eq_fun.to_germ_monoid_hom_apply MeasureTheory.AEEqFun.toGermMonoidHom_apply
#align measure_theory.ae_eq_fun.to_germ_add_monoid_hom MeasureTheory.AEEqFun.toGermAddMonoidHom
#align measure_theory.ae_eq_fun.to_germ_add_monoid_hom_apply MeasureTheory.AEEqFun.toGermAddMonoidHom_apply

end Monoid

@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3f364e9b6f02913a4c456ed87c250f51426478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
