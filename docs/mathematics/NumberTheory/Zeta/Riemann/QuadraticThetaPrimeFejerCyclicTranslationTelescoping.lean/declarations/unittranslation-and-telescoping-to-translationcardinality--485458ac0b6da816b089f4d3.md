# unitTranslation_and_telescoping_to_translationCardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e13fcd4-502c-d141-3fbc-ae7a2e75bbea",
  "kind": "theorem",
  "lexical_name": "unitTranslation_and_telescoping_to_translationCardinality",
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
  "slug": "unittranslation-and-telescoping-to-translationcardinality--485458ac0b6da816b089f4d3",
  "source": {
    "blob": "e61503c5f6164a695fc9ddd8197baacd92a0436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:485458ac0b6da816b089f4d37b4a90b4c7d8c53eaf51d26963d84f2a0e5a317a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e13fcd4-502c-d141-3fbc-ae7a2e75bbea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitTranslation_and_telescoping_to_translationCardinality
    (hunit : CyclicSharpUnitTranslationBoundClaim)
    (htelescope : CyclicSharpTranslationTelescopingClaim) :
    CyclicSharpTranslationCardinalityClaim := by
  intro X m hX hm0 hm1 r
  have htel :=
    htelescope X m hX hm0 hm1 r
  have hu :=
    hunit X m hX hm0 hm1
  have hd :
      0 ≤
        (min r.val
          (fejerOctavePeriod X - r.val) : ℝ) := by
    positivity
  calc
    cyclicSharpTranslationL1 X m r
      ≤
      (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) *
        cyclicSharpTranslationL1 X m
          (1 : ZMod (fejerOctavePeriod X)) := htel
    _ ≤
      (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) * 2 := by
          exact mul_le_mul_of_nonneg_left hu hd
    _ =
      2 * (min r.val
        (fejerOctavePeriod X - r.val) : ℕ) := by ring

/-- The entire smoothing route is now reduced to a two-lemma universal interval
package: one-step boundary control and translation telescoping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTranslationTelescoping.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61503c5f6164a695fc9ddd8197baacd92a0436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
