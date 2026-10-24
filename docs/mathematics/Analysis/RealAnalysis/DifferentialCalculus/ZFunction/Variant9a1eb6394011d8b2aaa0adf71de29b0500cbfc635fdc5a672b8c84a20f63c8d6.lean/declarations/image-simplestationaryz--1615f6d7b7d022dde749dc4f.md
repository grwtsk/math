# image_simpleStationaryZ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0af79bb2-b525-9deb-9a29-0cbcf287e085",
  "kind": "theorem",
  "lexical_name": "image_simpleStationaryZ",
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
  "slug": "image-simplestationaryz--1615f6d7b7d022dde749dc4f",
  "source": {
    "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 351,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1615f6d7b7d022dde749dc4f8aae22b142ab1e18c9cb6ed1a5aaf45deb7e690c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0af79bb2-b525-9deb-9a29-0cbcf287e085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_simpleStationaryZ {T : ℝ} (hT : 0 < T) :
    sline '' simpleStationaryZ T = zerosInW T (2 * T) ∩ {ρ | ρ.re = 1 / 2} ∩ {ρ | wMult ρ = 1} := by
  ext ρ
  constructor
  · rintro ⟨t, ⟨⟨ht1, ht2⟩, hz, hnz⟩, rfl⟩
    have ht : t ≠ 0 := by intro h; rw [h] at ht1; linarith
    have him : (sline t).im ≠ 0 := by simpa using ht
    have hW := (deriv_hardyZ_eq_zero_iff ht).mp hz
    have hd := (deriv2_hardyZ_ne_zero_iff ht hW).mp hnz
    exact ⟨⟨⟨⟨hW, him⟩, by simpa using ht1, by simpa using ht2⟩, by simp⟩, (wMult_eq_one_iff him).mpr ⟨hW, hd⟩⟩
  · rintro ⟨⟨⟨⟨hW, him⟩, h1, h2⟩, hre⟩, hm⟩
    have hρ : ρ = sline ρ.im := by
      apply Complex.ext <;> simp [sline]; simpa using hre
    have ht : ρ.im ≠ 0 := him
    refine ⟨ρ.im, ⟨⟨h1, h2⟩, ?_, ?_⟩, hρ.symm⟩
    · rw [deriv_hardyZ_eq_zero_iff ht, ← hρ]; exact hW
    · have hW' : hardyW (sline ρ.im) = 0 := by rw [← hρ]; exact hW
      rw [deriv2_hardyZ_ne_zero_iff ht hW', ← hρ]
      exact ((wMult_eq_one_iff him).mp hm).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
