# liftMonoidWithZeroHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f367a3-1951-2e23-43f2-19e16c7998fc",
  "kind": "theorem",
  "lexical_name": "liftMonoidWithZeroHom_injective",
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
  "slug": "liftmonoidwithzerohom-injective--368da015f7a130114aa870d1",
  "source": {
    "blob": "8d13c6afd04fada6eb5221b3c4e8041d1403e570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 741,
    "path": "GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:368da015f7a130114aa870d1e26a3ba8ad0d09b35931fbdd0208eba9eb771fd8",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f367a3-1951-2e23-43f2-19e16c7998fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftMonoidWithZeroHom_injective [Nontrivial R] (φ : R[X] →*₀ G₀) (hφ : Function.Injective φ)
    (hφ' : R[X]⁰ ≤ G₀⁰.comap φ := nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _ hφ) :
    Function.Injective (liftMonoidWithZeroHom φ hφ') := by
  rintro ⟨x⟩ ⟨y⟩
  induction' x using Localization.induction_on with a
  induction' y using Localization.induction_on with a'
  · simp_rw [liftMonoidWithZeroHom_apply_ofFractionRing_mk]
    intro h
    congr 1
    refine Localization.mk_eq_mk_iff.mpr (Localization.r_of_eq (M := R[X]) ?_)
    have := mul_eq_mul_of_div_eq_div _ _ ?_ ?_ h
    rwa [← map_mul, ← map_mul, hφ.eq_iff, mul_comm, mul_comm a'.fst] at this
    all_goals exact map_ne_zero_of_mem_nonZeroDivisors _ hφ (SetLike.coe_mem _)
#align ratfunc.lift_monoid_with_zero_hom_injective RatFunc.liftMonoidWithZeroHom_injective

/-- Lift an injective ring homomorphism `R[X] →+* L` to a `RatFunc R →+* L`
by mapping both the numerator and denominator and quotienting them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d13c6afd04fada6eb5221b3c4e8041d1403e570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
