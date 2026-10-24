# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ad9f870b8d64e353e32e0372756a2122490b974044e6d5c611575ea76bb76d9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8bce811eeb0bde317e89c5e1",
  "source": {
    "blob": "aaaca5e9a5fb4f675df822a02498732376c6b9b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bce811eeb0bde317e89c5e1570ade79282f86f3afd0efb0369fde13fd134c97",
  "verification": {
    "reference": "docs/verification/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ad9f870b8d64e353e32e0372756a2122490b974044e6d5c611575ea76bb76d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {σ : Type*} [Finite σ] :
    IsAdicComplete (.span (.range X) : Ideal (MvPowerSeries σ R)) (MvPowerSeries σ R) := by
  have : Ideal.map (toAdicCompletionAlgEquiv σ R).toRingEquiv (Ideal.span (Set.range X)) =
    (MvPolynomial.idealOfVars σ R).map (algebraMap ..) := by
    simp_rw [Ideal.map_span, ← Set.range_comp]
    congr 2; ext1
    simp [AdicCompletion.algebraMap_apply, ← MvPolynomial.coe_X, toAdicCompletion_coe]
  rw [← IsAdicComplete.congr_ringEquiv _ (toAdicCompletionAlgEquiv σ R).toRingEquiv, this,
    IsAdicComplete.map_algebraMap_iff]
  exact AdicCompletion.isAdicComplete (MvPolynomial.idealOfVars_fg σ R)

end MvPowerSeries

namespace PowerSeries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Completeness/Variantdc949962c57ecae3f4b4af264bee8cd53ebe85b1a2dfe4f3bd7640a1022f2d3c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaaca5e9a5fb4f675df822a02498732376c6b9b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
