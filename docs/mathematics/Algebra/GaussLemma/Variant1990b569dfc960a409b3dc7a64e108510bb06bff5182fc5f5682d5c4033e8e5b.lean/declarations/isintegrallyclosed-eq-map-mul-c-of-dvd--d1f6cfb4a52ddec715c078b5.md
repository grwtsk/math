# IsIntegrallyClosed.eq_map_mul_C_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:232fff70-16b9-3a3e-1900-16a2757a8e3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be55e9a3-7d40-23da-068e-3d85c86c779d",
  "kind": "theorem",
  "lexical_name": "IsIntegrallyClosed.eq_map_mul_C_of_dvd",
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
  "slug": "isintegrallyclosed-eq-map-mul-c-of-dvd--d1f6cfb4a52ddec715c078b5",
  "source": {
    "blob": "5e6222858f485c235128d98d33ba0c84aa80c7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 75,
    "path": "GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f6cfb4a52ddec715c078b583c36239dcf64cd051f5addc58e7591895e71591",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be55e9a3-7d40-23da-068e-3d85c86c779d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegrallyClosed.eq_map_mul_C_of_dvd [IsIntegrallyClosed R] {f : R[X]} (hf : f.Monic)
    {g : K[X]} (hg : g ∣ f.map (algebraMap R K)) :
    ∃ g' : R[X], g'.map (algebraMap R K) * (C <| leadingCoeff g) = g := by
  have g_ne_0 : g ≠ 0 := ne_zero_of_dvd_ne_zero (Monic.ne_zero <| hf.map (algebraMap R K)) hg
  suffices lem : ∃ g' : R[X], g'.map (algebraMap R K) = g * C g.leadingCoeff⁻¹ by
    obtain ⟨g', hg'⟩ := lem
    use g'
    rw [hg', mul_assoc, ← C_mul, inv_mul_cancel₀ (leadingCoeff_ne_zero.mpr g_ne_0), C_1, mul_one]
  have g_mul_dvd : g * C g.leadingCoeff⁻¹ ∣ f.map (algebraMap R K) := by
    rwa [Associated.dvd_iff_dvd_left (show Associated (g * C g.leadingCoeff⁻¹) g from _)]
    rw [associated_mul_isUnit_left_iff]
    exact isUnit_C.mpr (inv_ne_zero <| leadingCoeff_ne_zero.mpr g_ne_0).isUnit
  let algeq :=
    (Subalgebra.equivOfEq _ _ <| integralClosure_eq_bot R _).trans
      (Algebra.botEquivOfInjective <| IsFractionRing.injective R <| K)
  have :
    (algebraMap R _).comp algeq.toAlgHom.toRingHom = (integralClosure R _).toSubring.subtype := by
    ext x; (conv_rhs => rw [← algeq.symm_apply_apply x]); rfl
  have H :=
    (mem_lifts _).1
      (integralClosure.mem_lifts_of_monic_of_dvd_map K hf (monic_mul_leadingCoeff_inv g_ne_0)
        g_mul_dvd)
  refine ⟨map algeq.toAlgHom.toRingHom ?_, ?_⟩
  · use! Classical.choose H
  · rw [map_map, this]
    exact Classical.choose_spec H

end IsIntegrallyClosed

namespace Polynomial

section

variable {S : Type*} [CommRing S] [IsDomain S]
variable {φ : R →+* S} (hinj : Function.Injective φ) {f : R[X]} (hf : f.IsPrimitive)
include hinj hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant1990b569dfc960a409b3dc7a64e108510bb06bff5182fc5f5682d5c4033e8e5b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6222858f485c235128d98d33ba0c84aa80c7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
