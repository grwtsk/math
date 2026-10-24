# det_basisOfFractionalIdeal_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83769157-e71e-da51-ca8c-f273fab2150d",
  "kind": "theorem",
  "lexical_name": "det_basisOfFractionalIdeal_eq_norm",
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
  "slug": "det-basisoffractionalideal-eq-norm--f112ce223bab11004c06403b",
  "source": {
    "blob": "82a4cd2cca4d1719930333affd8822ea9a3db609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 744,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f112ce223bab11004c06403bfa4342c258430fd805b0d04266b49cb40dcf6a57",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83769157-e71e-da51-ca8c-f273fab2150d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_basisOfFractionalIdeal_eq_norm
    (e : (ChooseBasisIndex ℤ (𝓞 K)) ≃ (ChooseBasisIndex ℤ I)) :
    |Basis.det (latticeBasis K) ((mixedEmbedding K ∘ (basisOfFractionalIdeal K I) ∘ e))| =
      FractionalIdeal.absNorm I.1 := by
  suffices Basis.det (latticeBasis K) ((mixedEmbedding K ∘ (basisOfFractionalIdeal K I) ∘ e)) =
      (algebraMap ℚ ℝ) ((Basis.det (integralBasis K)) ((basisOfFractionalIdeal K I) ∘ e)) by
    rw [this, eq_ratCast, ← Rat.cast_abs, ← Equiv.symm_symm e, ← Basis.coe_reindex,
      det_basisOfFractionalIdeal_eq_absNorm K I e]
  rw [Basis.det_apply, Basis.det_apply, RingHom.map_det]
  congr
  ext i j
  simp_rw [RingHom.mapMatrix_apply, Matrix.map_apply, Basis.toMatrix_apply, Function.comp_apply]
  exact latticeBasis_repr_apply K _ i

/-- A `ℝ`-basis of the mixed space of `K` that is also a `ℤ`-basis of the image of the fractional
ideal `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianteb8a669b3a1c8ef1b2436101da9ce1ba8d751ce50f4d8b39c7b1f13841a83536.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4cd2cca4d1719930333affd8822ea9a3db609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
