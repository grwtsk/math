# Ring.DimensionLEOne.localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba61921-39bd-7e71-9eb8-de2ae31f89d4",
  "kind": "theorem",
  "lexical_name": "Ring.DimensionLEOne.localization",
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
  "slug": "ring-dimensionleone-localization--170fc7beba40952005669e21",
  "source": {
    "blob": "6bb447c063becc43aee20383d371f97e8ebbfbf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 79,
    "path": "GRWTSK/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:170fc7beba40952005669e21a2db18fbab6f058358e3c0cbfa551627a65fdc68",
  "verification": {
    "reference": "docs/verification/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba61921-39bd-7e71-9eb8-de2ae31f89d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ring.DimensionLEOne.localization {R : Type*} (Rₘ : Type*) [CommRing R] [IsDomain R]
    [CommRing Rₘ] [Algebra R Rₘ] {M : Submonoid R} [IsLocalization M Rₘ] (hM : M ≤ R⁰)
    [h : Ring.DimensionLEOne R] : Ring.DimensionLEOne Rₘ := ⟨by
  intro p hp0 hpp
  refine' Ideal.isMaximal_def.mpr ⟨hpp.ne_top, Ideal.maximal_of_no_maximal fun P hpP hPm => _⟩
  have hpP' : (⟨p, hpp⟩ : { p : Ideal Rₘ // p.IsPrime }) < ⟨P, hPm.isPrime⟩ := hpP
  rw [← (IsLocalization.orderIsoOfPrime M Rₘ).lt_iff_lt] at hpP'
  haveI : Ideal.IsPrime (Ideal.comap (algebraMap R Rₘ) p) :=
    ((IsLocalization.orderIsoOfPrime M Rₘ) ⟨p, hpp⟩).2.1
  haveI : Ideal.IsPrime (Ideal.comap (algebraMap R Rₘ) P) :=
    ((IsLocalization.orderIsoOfPrime M Rₘ) ⟨P, hPm.isPrime⟩).2.1
  have _ : Ideal.comap (algebraMap R Rₘ) p < Ideal.comap (algebraMap R Rₘ) P := hpP'
  refine' h.not_lt_lt ⊥ (Ideal.comap _ _) (Ideal.comap _ _) ⟨_, hpP'⟩
  exact IsLocalization.bot_lt_comap_prime _ _ hM _ hp0⟩
#align ring.dimension_le_one.localization Ring.DimensionLEOne.localization

/-- The localization of a Dedekind domain is a Dedekind domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Dvr/Variantc6b5f97d3c8f7142ef92e99773e7d6a124865e47f6a037c7c570fb048385b285.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bb447c063becc43aee20383d371f97e8ebbfbf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
