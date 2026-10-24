# monic_of_isUnit_leadingCoeff_inv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fe346cc-26af-1df9-51f8-9f737a46ab84",
  "kind": "theorem",
  "lexical_name": "monic_of_isUnit_leadingCoeff_inv_smul",
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
  "slug": "monic-of-isunit-leadingcoeff-inv-smul--8afb39233649d6a716de054e",
  "source": {
    "blob": "7f4b072fc3c1a39dcaa7c68604466fea727ca147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8afb39233649d6a716de054e1f379d675347d1bc5d2bc97b78cf813004a800a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fe346cc-26af-1df9-51f8-9f737a46ab84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monic_of_isUnit_leadingCoeff_inv_smul (h : IsUnit p.leadingCoeff) :
    Monic (h.unit⁻¹ • p) := by
  rw [Monic.def, leadingCoeff_smul_of_smul_regular _ (isSMulRegular_of_group _), Units.smul_def]
  obtain ⟨k, hk⟩ := h
  simp only [← hk, smul_eq_mul, ← Units.val_mul, Units.val_eq_one, inv_mul_eq_iff_eq_mul]
  simp [Units.ext_iff, IsUnit.unit_spec]
#align polynomial.monic_of_is_unit_leading_coeff_inv_smul Polynomial.monic_of_isUnit_leadingCoeff_inv_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f4b072fc3c1a39dcaa7c68604466fea727ca147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
