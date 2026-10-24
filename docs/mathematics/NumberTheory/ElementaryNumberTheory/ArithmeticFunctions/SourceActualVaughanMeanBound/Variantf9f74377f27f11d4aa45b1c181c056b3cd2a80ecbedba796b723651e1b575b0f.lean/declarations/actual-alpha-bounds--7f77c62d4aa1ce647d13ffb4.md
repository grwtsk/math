# actual_alpha_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b635a920-8436-64b5-c7e7-a560d58aff09",
  "kind": "theorem",
  "lexical_name": "actual_alpha_bounds",
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
  "slug": "actual-alpha-bounds--7f77c62d4aa1ce647d13ffb4",
  "source": {
    "blob": "77e8a2f20942328bf3e897fc329fe58e695eed28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f77c62d4aa1ce647d13ffb42bc092a9dce29cf94c721bd52ab41e71d834e7c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b635a920-8436-64b5-c7e7-a560d58aff09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_alpha_bounds (U : ℕ) (hU : 1 ≤ U) :
    (2 - (U : ℝ)) / U ≤ alpha U ∧ alpha U ≤ 1 := by
  have hu : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hb := abs_le.mp (actual_alpha_unit_defect_abs_le U hU)
  constructor
  · apply (div_le_iff₀ hu).mpr
    linarith [hb.1]
  · nlinarith [hb.2]

/-- A genuine uniform bound for this actual arithmetic coefficient, including empty U=0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantf9f74377f27f11d4aa45b1c181c056b3cd2a80ecbedba796b723651e1b575b0f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e8a2f20942328bf3e897fc329fe58e695eed28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
