# δ_eq_δAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45bc86de-0244-75db-63a4-74d01c105cbb",
  "kind": "lemma",
  "lexical_name": "δ_eq_δAux",
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
  "slug": "eq-aux--16aa86a183af79f07a22bde4",
  "source": {
    "blob": "769f0651401d0624885f2ff0a06ea91eff4028b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 369,
    "path": "GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16aa86a183af79f07a22bde47f00b41fc561c5331cabbe61a118790a3f04c714",
  "verification": {
    "reference": "docs/verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45bc86de-0244-75db-63a4-74d01c105cbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_eq_δAux (x : Q.ker) (hx) :
    δ Q P ⟨.mk x, hx⟩ = δAux R Q x.1 := by
  let y := Extension.Cotangent.mk (P := (Q.comp P).toExtension) (Q.kerCompPreimage P x)
  have hy : (Extension.Cotangent.map (Q.ofComp P).toExtensionHom) y = Extension.Cotangent.mk x := by
    simp only [y, Extension.Cotangent.map_mk]
    congr
    exact ofComp_kerCompPreimage Q P x
  let z := (CotangentSpace.compEquiv Q P ((Q.comp P).toExtension.cotangentComplex y)).2
  rw [H1Cotangent.δ_eq (y := y) (z := z)]
  · rw [← ofComp_kerCompPreimage Q P x, δAux_ofComp]
    rfl
  · exact hy
  · rw [← CotangentSpace.compEquiv_symm_inr]
    apply (CotangentSpace.compEquiv Q P).injective
    simp only [LinearMap.coe_comp, LinearEquiv.coe_coe, LinearMap.coe_inr, Function.comp_apply,
      LinearEquiv.apply_symm_apply, z]
    ext
    swap; · rfl
    show 0 = (LinearMap.fst T Q.toExtension.CotangentSpace (T ⊗[S] P.toExtension.CotangentSpace) ∘ₗ
      (CotangentSpace.compEquiv Q P).toLinearMap) ((Q.comp P).toExtension.cotangentComplex y)
    rw [CotangentSpace.fst_compEquiv, Extension.CotangentSpace.map_cotangentComplex, hy, hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769f0651401d0624885f2ff0a06ea91eff4028b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
