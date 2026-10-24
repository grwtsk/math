# frequency_irrational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38cddf19-b49a-e270-40e7-50725f57be21",
  "kind": "theorem",
  "lexical_name": "frequency_irrational",
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
  "slug": "frequency-irrational--37fe91b134346544170106ac",
  "source": {
    "blob": "6a090d4535a2fee914bf0bcbaa59d73cbcf35002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 537,
    "path": "GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37fe91b134346544170106ace54806020f63901be62a8983ab1cc3e2fdf60b60",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38cddf19-b49a-e270-40e7-50725f57be21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequency_irrational {a : ℕ → ℕ} {alpha : ℝ}
    (h : FrequencyRealization a alpha) : Irrational alpha := by
  rintro ⟨q, hq⟩
  have ht : (GenContFract.of alpha).Terminates :=
    (GenContFract.terminates_iff_rat alpha).2 ⟨q, hq.symm⟩
  rw [h] at ht
  exact continuedFraction_not_terminates a ht

/-- A real-frequency certificate identifies the actual native convergent, not the raw driver. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a090d4535a2fee914bf0bcbaa59d73cbcf35002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
