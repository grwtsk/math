# IsIntegralClosure.isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa153c5d-a6eb-5f52-9d8b-91216c7090e1",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.isLocalization",
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
  "slug": "isintegralclosure-islocalization--82354ce5e3fbe76cc2e3ee60",
  "source": {
    "blob": "2cee1e848c2096ae7d81d1384e6e40ead6d45652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 76,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82354ce5e3fbe76cc2e3ee60777d6464a557fc318d5a86c83dcf58b6ac027b53",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa153c5d-a6eb-5f52-9d8b-91216c7090e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.isLocalization [IsSeparable K L] [NoZeroSMulDivisors A L] :
    IsLocalization (Algebra.algebraMapSubmonoid C A⁰) L := by
  haveI : IsDomain C :=
    (IsIntegralClosure.equiv A C L (integralClosure A L)).toMulEquiv.isDomain (integralClosure A L)
  haveI : NoZeroSMulDivisors A C := IsIntegralClosure.noZeroSMulDivisors A L
  refine' ⟨_, fun z => _, fun {x y} => ⟨fun h => ⟨1, _⟩, _⟩⟩
  · rintro ⟨_, x, hx, rfl⟩
    rw [isUnit_iff_ne_zero, map_ne_zero_iff _ (IsIntegralClosure.algebraMap_injective C A L),
      Subtype.coe_mk, map_ne_zero_iff _ (NoZeroSMulDivisors.algebraMap_injective A C)]
    exact mem_nonZeroDivisors_iff_ne_zero.mp hx
  · obtain ⟨m, hm⟩ :=
      IsIntegral.exists_multiple_integral_of_isLocalization A⁰ z (IsSeparable.isIntegral K z)
    obtain ⟨x, hx⟩ : ∃ x, algebraMap C L x = m • z := IsIntegralClosure.isIntegral_iff.mp hm
    refine' ⟨⟨x, algebraMap A C m, m, SetLike.coe_mem m, rfl⟩, _⟩
    rw [Subtype.coe_mk, ← IsScalarTower.algebraMap_apply, hx, mul_comm, Submonoid.smul_def,
      smul_def]
  · simp only [IsIntegralClosure.algebraMap_injective C A L h]
  · rintro ⟨⟨_, m, hm, rfl⟩, h⟩
    refine' congr_arg (algebraMap C L) ((mul_right_inj' _).mp h)
    rw [Subtype.coe_mk, map_ne_zero_iff _ (NoZeroSMulDivisors.algebraMap_injective A C)]
    exact mem_nonZeroDivisors_iff_ne_zero.mp hm
#align is_integral_closure.is_localization IsIntegralClosure.isLocalization

variable [FiniteDimensional K L]

variable {A K L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cee1e848c2096ae7d81d1384e6e40ead6d45652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
