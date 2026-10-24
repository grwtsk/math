# vPullbackConeIsLimitOfMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0b236db160d2c94d65f64733d8650c1cea0dd1f35b28d75edbfaaf95a43253c",
  "kind": "def",
  "lexical_name": "vPullbackConeIsLimitOfMap",
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
  "slug": "vpullbackconeislimitofmap--c403a81960147ab29bd2b325",
  "source": {
    "blob": "41b66859ff4530e87c466dc3b019bd914a1573ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant5514c31cebc894c7d48bb3363533701735a1d78c7d820bc3ba4e29cb04ab4796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c403a81960147ab29bd2b32521f14edccc3faadad8cf257538fe77e662d86b87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant5514c31cebc894c7d48bb3363533701735a1d78c7d820bc3ba4e29cb04ab4796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0b236db160d2c94d65f64733d8650c1cea0dd1f35b28d75edbfaaf95a43253c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vPullbackConeIsLimitOfMap (i j : D.J) [ReflectsLimit (cospan (D.ι i) (D.ι j)) F]
    (hc : IsLimit ((D.mapGlueData F).vPullbackCone i j)) : IsLimit (D.vPullbackCone i j) := by
  apply isLimitOfReflects F
  apply (isLimitMapConePullbackConeEquiv _ _).symm _
  let e : cospan (F.map (D.ι i)) (F.map (D.ι j)) ≅
      cospan ((D.mapGlueData F).ι i) ((D.mapGlueData F).ι j) :=
    NatIso.ofComponents
      (fun x => by
        cases x
        exacts [D.gluedIso F, Iso.refl _])
      (by rintro (_ | _) (_ | _) (_ | _ | _) <;> simp)
  apply IsLimit.postcomposeHomEquiv e _ _
  apply hc.ofIsoLimit
  refine Cones.ext (Iso.refl _) ?_
  rintro (_ | _ | _)
  all_goals simp [e]; rfl

/-- If there is a forgetful functor into `Type` that preserves enough (co)limits, then `D.ι` will
be jointly surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant5514c31cebc894c7d48bb3363533701735a1d78c7d820bc3ba4e29cb04ab4796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant5514c31cebc894c7d48bb3363533701735a1d78c7d820bc3ba4e29cb04ab4796.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b66859ff4530e87c466dc3b019bd914a1573ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
