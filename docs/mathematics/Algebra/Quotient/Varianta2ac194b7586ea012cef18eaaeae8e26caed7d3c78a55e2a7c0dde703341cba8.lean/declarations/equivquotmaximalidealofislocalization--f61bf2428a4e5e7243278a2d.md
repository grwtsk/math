# equivQuotMaximalIdealOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f8438f1b8e00bb1a9f6ecc725599dc070f79e644123e2f8e194d1cbe0c5ddc3",
  "kind": "def",
  "lexical_name": "equivQuotMaximalIdealOfIsLocalization",
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
  "slug": "equivquotmaximalidealofislocalization--f61bf2428a4e5e7243278a2d",
  "source": {
    "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 67,
    "path": "GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f61bf2428a4e5e7243278a2de437f6c4dcb93a39dceeb200056fb5ddac22855c",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f8438f1b8e00bb1a9f6ecc725599dc070f79e644123e2f8e194d1cbe0c5ddc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivQuotMaximalIdealOfIsLocalization : R ⧸ p ≃+* Rₚ ⧸ maximalIdeal Rₚ := by
  refine (Ideal.quotEquivOfEq ?_).trans
    (RingHom.quotientKerEquivOfSurjective (f := algebraMap R (Rₚ ⧸ maximalIdeal Rₚ)) ?_)
  · rw [IsScalarTower.algebraMap_eq R Rₚ, ← RingHom.comap_ker,
      Ideal.Quotient.algebraMap_eq, Ideal.mk_ker, IsLocalization.AtPrime.comap_maximalIdeal Rₚ p]
  · intro x
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective p.primeCompl x
    obtain ⟨s', hs⟩ := Ideal.Quotient.mk_surjective (I := p) (Ideal.Quotient.mk p s)⁻¹
    simp only [IsScalarTower.algebraMap_eq R Rₚ (Rₚ ⧸ _),
      Ideal.Quotient.algebraMap_eq, RingHom.comp_apply]
    use x * s'
    rw [← sub_eq_zero, ← map_sub, Ideal.Quotient.eq_zero_iff_mem]
    have : algebraMap R Rₚ s ∉ maximalIdeal Rₚ := by
      rw [← Ideal.mem_comap, IsLocalization.AtPrime.comap_maximalIdeal Rₚ p]
      exact s.prop
    refine ((inferInstanceAs <| (maximalIdeal Rₚ).IsPrime).mem_or_mem ?_).resolve_left this
    rw [mul_sub, IsLocalization.mul_mk'_eq_mk'_of_mul, IsLocalization.mk'_mul_cancel_left,
      ← map_mul, ← map_sub, ← Ideal.mem_comap, IsLocalization.AtPrime.comap_maximalIdeal Rₚ p,
      mul_left_comm, ← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, map_mul, hs,
      mul_inv_cancel₀, mul_one, sub_self]
    rw [Ne, Ideal.Quotient.eq_zero_iff_mem]
    exact s.prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb340675a08f2a95a6f566b0ef31d11175e188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
