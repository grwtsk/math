# mkSelfProdFib_map_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e70cc394-3635-c2f1-1abf-4335bea17d92",
  "kind": "lemma",
  "lexical_name": "mkSelfProdFib_map_π",
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
  "slug": "mkselfprodfib-map--f899bdd333f9a52a2881e9b1",
  "source": {
    "blob": "b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f899bdd333f9a52a2881e9b13158ae26ebf74a5f4f34f69e075beeb61eab8970",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e70cc394-3635-c2f1-1abf-4335bea17d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mkSelfProdFib_map_π (t : F.obj X) : F.map (Pi.π _ t) (mkSelfProdFib F X) = t := by
  rw [← congrFun (piComparison_comp_π F _ t), FintypeCat.comp_apply,
    ← PreservesProduct.iso_hom]
  simp only [mkSelfProdFib, FintypeCat.inv_hom_id_apply]
  exact Concrete.productEquiv_symm_apply_π.{w, w, w+1} (fun _ : F.obj X ↦ F.obj X) id t

variable {X} {A : C} (u : A ⟶ selfProd F X)
  (a : F.obj A) (h : F.map u a = mkSelfProdFib F X) {F}
include h

/-- For each `x : F.obj X`, this is the composition of `u` with the projection at `x`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
