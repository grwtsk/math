# exists_finite_inj_algHom_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca40ae2-edba-ba9e-312e-97880d9375fd",
  "kind": "theorem",
  "lexical_name": "exists_finite_inj_algHom_of_fg",
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
  "slug": "exists-finite-inj-alghom-of-fg--09a6bfe1ecaac68109a10f30",
  "source": {
    "blob": "f9536f369edcc6f742ff16b677c090d3ee1ca63c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 294,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a6bfe1ecaac68109a10f30238166918329e87d33b6797539c93fd51d89b860",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca40ae2-edba-ba9e-312e-97880d9375fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_inj_algHom_of_fg : ∃ s, ∃ g : (MvPolynomial (Fin s) k) →ₐ[k] R,
    Function.Injective g ∧ g.Finite := by
  obtain ⟨s, g, ⟨inj, int⟩⟩ := exists_integral_inj_algHom_of_fg k R
  have h : algebraMap k R = g.toRingHom.comp (algebraMap k (MvPolynomial (Fin s) k)) := by
    algebraize [g.toRingHom]
    rw [IsScalarTower.algebraMap_eq k (MvPolynomial (Fin s) k), algebraMap_toAlgebra']
  exact ⟨s, g, inj, int.to_finite
    (h ▸ algebraMap_finiteType_iff_algebra_finiteType.mpr fin).of_comp_finiteType⟩

end mainthm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variantbc166ab7e1f1f43ec6b9c84ec3c813c5c28157385afe54b38aef48dca7129f0c.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9536f369edcc6f742ff16b677c090d3ee1ca63c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
