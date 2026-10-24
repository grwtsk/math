# exists_multiset_prod_cons_le_and_prod_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87f24320-88a5-e5ca-71a5-e539d50b53cf",
  "kind": "theorem",
  "lexical_name": "exists_multiset_prod_cons_le_and_prod_not_le",
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
  "slug": "exists-multiset-prod-cons-le-and-prod-not-le--3694c692555140f05895b449",
  "source": {
    "blob": "ebaae1e55906a2e45da6c0f703da3ac57a9f1c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 370,
    "path": "GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3694c692555140f05895b44990310c9781b0338681de533754f3e43eca7f80b9",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87f24320-88a5-e5ca-71a5-e539d50b53cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_multiset_prod_cons_le_and_prod_not_le [IsDedekindDomain A] (hNF : ¬IsField A)
    {I M : Ideal A} (hI0 : I ≠ ⊥) (hIM : I ≤ M) [hM : M.IsMaximal] :
    ∃ Z : Multiset (PrimeSpectrum A),
      (M ::ₘ Z.map PrimeSpectrum.asIdeal).prod ≤ I ∧
        ¬Multiset.prod (Z.map PrimeSpectrum.asIdeal) ≤ I := by
  -- Let `Z` be a minimal set of prime ideals such that their product is contained in `J`.
  obtain ⟨Z₀, hZ₀⟩ := PrimeSpectrum.exists_primeSpectrum_prod_le_and_ne_bot_of_domain hNF hI0
  obtain ⟨Z, ⟨hZI, hprodZ⟩, h_eraseZ⟩ :=
    Multiset.wellFounded_lt.has_min
      (fun Z => (Z.map PrimeSpectrum.asIdeal).prod ≤ I ∧ (Z.map PrimeSpectrum.asIdeal).prod ≠ ⊥)
      ⟨Z₀, hZ₀⟩
  have hZM : Multiset.prod (Z.map PrimeSpectrum.asIdeal) ≤ M := le_trans hZI hIM
  have hZ0 : Z ≠ 0 := by rintro rfl; simp [hM.ne_top] at hZM
  obtain ⟨_, hPZ', hPM⟩ := (hM.isPrime.multiset_prod_le (mt Multiset.map_eq_zero.mp hZ0)).mp hZM
  -- Then in fact there is a `P ∈ Z` with `P ≤ M`.
  obtain ⟨P, hPZ, rfl⟩ := Multiset.mem_map.mp hPZ'
  classical
    have := Multiset.map_erase PrimeSpectrum.asIdeal PrimeSpectrum.ext P Z
    obtain ⟨hP0, hZP0⟩ : P.asIdeal ≠ ⊥ ∧ ((Z.erase P).map PrimeSpectrum.asIdeal).prod ≠ ⊥ := by
      rwa [Ne.def, ← Multiset.cons_erase hPZ', Multiset.prod_cons, Ideal.mul_eq_bot, not_or, ←
        this] at hprodZ
    -- By maximality of `P` and `M`, we have that `P ≤ M` implies `P = M`.
    have hPM' := (P.IsPrime.isMaximal hP0).eq_of_le hM.ne_top hPM
    subst hPM'
    -- By minimality of `Z`, erasing `P` from `Z` is exactly what we need.
    refine ⟨Z.erase P, ?_, ?_⟩
    · convert hZI
      rw [this, Multiset.cons_erase hPZ']
    · refine fun h => h_eraseZ (Z.erase P) ⟨h, ?_⟩ (Multiset.erase_lt.mpr hPZ)
      exact hZP0
#align exists_multiset_prod_cons_le_and_prod_not_le exists_multiset_prod_cons_le_and_prod_not_le

namespace FractionalIdeal

open Ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant003f141b367a2e030c8dc01e80078432f8d9e4c5a0428d5af099a167ccc85fa6.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaae1e55906a2e45da6c0f703da3ac57a9f1c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
