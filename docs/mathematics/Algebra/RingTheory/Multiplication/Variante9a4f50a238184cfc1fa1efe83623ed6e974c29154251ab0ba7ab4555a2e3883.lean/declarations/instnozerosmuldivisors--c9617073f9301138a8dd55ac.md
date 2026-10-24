# instNoZeroSMulDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba08d6753a61d95832ded43ff31590bcf67f7e31d562ac2cd75a00ff35540f20",
  "kind": "instance",
  "lexical_name": "instNoZeroSMulDivisors",
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
  "slug": "instnozerosmuldivisors--c9617073f9301138a8dd55ac",
  "source": {
    "blob": "7d8d7b1e9e2b43ba261d8f44e77a7b8bf69d90c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 685,
    "line": 669,
    "path": "GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9617073f9301138a8dd55acb604f397caf3567d4949aa11a89516af9cc46913",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba08d6753a61d95832ded43ff31590bcf67f7e31d562ac2cd75a00ff35540f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–685.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNoZeroSMulDivisors {Γ} [AddCommMonoid Γ] [LinearOrder Γ] [IsOrderedCancelAddMonoid Γ]
    [Zero R] [SMulWithZero R V] [NoZeroSMulDivisors R V] :
    NoZeroSMulDivisors (HahnSeries Γ R) (HahnModule Γ R V) where
  eq_zero_or_eq_zero_of_smul_eq_zero {x y} hxy := by
    contrapose! hxy
    simp only [ne_eq]
    rw [HahnModule.ext_iff, funext_iff, not_forall]
    refine ⟨x.order + ((of R).symm y).order, ?_⟩
    rw [coeff_smul_order_add_order x y, of_symm_zero, HahnSeries.coeff_zero, smul_eq_zero, not_or]
    constructor
    · exact HahnSeries.leadingCoeff_ne_iff.mpr hxy.1
    · exact HahnSeries.leadingCoeff_ne_iff.mpr hxy.2

end HahnModule

namespace HahnSeries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8d7b1e9e2b43ba261d8f44e77a7b8bf69d90c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
