# actual_alpha_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31d593dd-ecdb-321c-6900-f9dcfe3cebbb",
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
  "slug": "actual-alpha-bounds--81acaf4936d6aa2d3247843d",
  "source": {
    "blob": "4d4b332549c95147ef6cb03827136cf9adf7eb80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81acaf4936d6aa2d3247843d2c362ecce398374c1ff8dd0d87433709e3cc93df",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31d593dd-ecdb-321c-6900-f9dcfe3cebbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceActualVaughanMeanBound/Variantd192d4e93e447303b91b71d3499c812f6a605799f6e130211cdf3621e1a3b8f5.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d4b332549c95147ef6cb03827136cf9adf7eb80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
