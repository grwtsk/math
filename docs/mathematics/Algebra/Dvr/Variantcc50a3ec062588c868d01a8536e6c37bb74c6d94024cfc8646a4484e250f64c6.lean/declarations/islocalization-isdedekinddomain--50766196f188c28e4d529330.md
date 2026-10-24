# IsLocalization.isDedekindDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d655dceb37caa659e1a20f648265099bf7d301b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b2d203d-810e-55e6-9869-0a37bfb7e058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15a63e20-761c-5a41-a3a5-e82067eb87e7",
  "kind": "theorem",
  "lexical_name": "IsLocalization.isDedekindDomain",
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
  "slug": "islocalization-isdedekinddomain--50766196f188c28e4d529330",
  "source": {
    "blob": "4d655dceb37caa659e1a20f648265099bf7d301b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 80,
    "path": "GRWTSK/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50766196f188c28e4d52933003f278181d1000a4b4f9fbd567ce6f020ef705ab",
  "verification": {
    "reference": "docs/verification/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a63e20-761c-5a41-a3a5-e82067eb87e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.isDedekindDomain [IsDedekindDomain A] {M : Submonoid A} (hM : M ≤ A⁰)
    (Aₘ : Type*) [CommRing Aₘ] [IsDomain Aₘ] [Algebra A Aₘ] [IsLocalization M Aₘ] :
    IsDedekindDomain Aₘ := by
  have h : ∀ y : M, IsUnit (algebraMap A (FractionRing A) y) := by
    rintro ⟨y, hy⟩
    exact IsUnit.mk0 _ (mt IsFractionRing.to_map_eq_zero_iff.mp (nonZeroDivisors.ne_zero (hM hy)))
  letI : Algebra Aₘ (FractionRing A) := RingHom.toAlgebra (IsLocalization.lift h)
  haveI : IsScalarTower A Aₘ (FractionRing A) :=
    IsScalarTower.of_algebraMap_eq fun x => (IsLocalization.lift_eq h x).symm
  haveI : IsFractionRing Aₘ (FractionRing A) :=
    IsFractionRing.isFractionRing_of_isDomain_of_isLocalization M _ _
  refine (isDedekindDomain_iff _ (FractionRing A)).mpr ⟨?_, ?_, ?_, ?_⟩
  · infer_instance
  · exact IsLocalization.isNoetherianRing M _ inferInstance
  · exact Ring.DimensionLEOne.localization Aₘ hM
  · intro x hx
    obtain ⟨⟨y, y_mem⟩, hy⟩ := hx.exists_multiple_integral_of_isLocalization M _
    obtain ⟨z, hz⟩ := (isIntegrallyClosed_iff _).mp IsDedekindRing.toIsIntegralClosure hy
    refine ⟨IsLocalization.mk' Aₘ z ⟨y, y_mem⟩, (IsLocalization.lift_mk'_spec _ _ _ _).mpr ?_⟩
    rw [hz, ← Algebra.smul_def]
    rfl

/-- The localization of a Dedekind domain at every nonzero prime ideal is a Dedekind domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Dvr/Variantcc50a3ec062588c868d01a8536e6c37bb74c6d94024cfc8646a4484e250f64c6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d655dceb37caa659e1a20f648265099bf7d301b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
