# lift_projectQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:915e485f-5330-8c74-7650-fd62c8b9e183",
  "kind": "theorem",
  "lexical_name": "lift_projectQuotient",
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
  "slug": "lift-projectquotient--9342dcabf008b456cbf26e5d",
  "source": {
    "blob": "4d9efff285e12caf400aa98dbfcd07e1e733e37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9342dcabf008b456cbf26e5d433d4b829389924039dff838826197ee2eba21f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:915e485f-5330-8c74-7650-fd62c8b9e183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_projectQuotient [HasColimits C] [PreservesColimits S] {A : CostructuredArrow S T} :
    ∀ (P : Subobject (op A)) {q} (hq : S.map (projectQuotient P).arrow.unop ≫ q = A.hom),
      liftQuotient (projectQuotient P) hq = P :=
  Subobject.ind _
    (by
      intro P f hf q hq
      fapply Subobject.mk_eq_mk_of_comm
      · refine' (Iso.op (isoMk _ _) : _ ≅ op (unop P))
        · exact (Subobject.underlyingIso f.unop.left.op).unop
        · refine' (cancel_epi (S.map f.unop.left)).1 _
          simpa [← Category.assoc, ← S.map_comp] using hq
      · exact Quiver.Hom.unop_inj (by aesop_cat))
#align category_theory.costructured_arrow.lift_project_quotient CategoryTheory.CostructuredArrow.lift_projectQuotient

/-- Technical lemma for `quotientEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant0b823a96e30713f54af5bfb1456213b8496900af27bdc0ba6c50c62cd2346838.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9efff285e12caf400aa98dbfcd07e1e733e37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
