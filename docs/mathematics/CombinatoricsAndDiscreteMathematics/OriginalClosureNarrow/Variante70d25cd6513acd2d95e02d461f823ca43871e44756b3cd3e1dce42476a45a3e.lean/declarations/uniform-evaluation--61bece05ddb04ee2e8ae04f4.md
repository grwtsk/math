# uniform_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:249b679c-ccc0-ff00-4c2f-ebabba596e99",
  "kind": "theorem",
  "lexical_name": "uniform_evaluation",
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
  "slug": "uniform-evaluation--61bece05ddb04ee2e8ae04f4",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21612,
    "line": 21567,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61bece05ddb04ee2e8ae04f4e49d468f89d6dedd77a81e0811e176f3f9c01db3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249b679c-ccc0-ff00-4c2f-ebabba596e99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21567–21612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem uniform_evaluation {A Q w : Expr S}
    (ha : HasType P Γ A (.sort R.seed)) (ma : WellModed γ A .data)
    (hv : HasType P Γ (R.uniform Q) R.carrier) (mv : WellModed γ (R.uniform Q) .data)
    (hQ : L.Family (R.singleType (R.lifting.project (R.lifting.inject A)))
      (Q.subst (Expr.liftSub (Expr.single (R.lifting.inject A)))))
    (hw : HasType P Γ w (R.singleType A)) (mw : WellModed γ w .data) :
    Equivalent P Γ γ (R.observe A (R.uniform Q) w)
      ((Q.subst (Expr.liftSub (Expr.single (R.lifting.inject A)))).instantiate w) := by
  let A' := R.lifting.project (R.lifting.inject A)
  let Q' := Q.subst (Expr.liftSub (Expr.single (R.lifting.inject A)))
  have ha' : HasType P Γ A' (.sort R.seed) := h.project_typed ((h.lifting.typed h.seed_sorted).1 _ ha)
  have ma' : WellModed γ A' .data := h.project_mode (h.lifting.modes.2.1 _ ma)
  have hc : Converts A' A := (R.lifting.cancel A).converts
  obtain ⟨s,hs⟩ := h.funTriple.domain.1
  have hw' : HasType P Γ w (R.singleType A') :=
    hw.conversion (h.single_sorted ha' s hs) (.symm _ _ (R.singleType_converts hc))
  have hobs := h.observe_formula ha ma hv mv hw mw
  have ht := h.wrappedBuild_typed ha' ma' hQ
  have hread := h.readBody_family ha' hw' mw
  have hobs' := (h.funPath.sound (h.fun_sorted ha') (h.fun_mode ma')).2 _ _ ht.1 ht.2 hread
  have hconv : Converts (R.observe A (R.uniform Q) w)
      (R.funPath.observe (R.funType A') (R.wrappedBuild A' Q') (R.readBody w)) :=
    R.funPath.observe_congr (R.funType_converts (.symm _ _ hc))
      (R.uniform_specialize A Q) (.refl _)
  obtain ⟨t,ht⟩ := L.triple.codomain.1
  exact (Equivalent.of_conversion (hobs.1 t ht) (hobs'.1 t ht) hconv).trans
    (h.wrappedBuild_evaluation ha' ma' hQ hw' mw)
    (hobs.1 t ht) (hobs'.1 t ht) ((hQ.instantiate hw' mw).1 t ht)
end Formed
end ProbeCode
end PureTypeSystem.Labelled

end OAI

/- Source module: OAI.Computability.TypeSystem.Relational -/

namespace OAI

namespace PureTypeSystem.Labelled

section
universe u
variable {S : Type u} {P : Specification S}

/-- Fixed syntax shared by both source logical channels and the A-independent
probe type. The raw path is literally shared, not an isomorphism hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L21567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
