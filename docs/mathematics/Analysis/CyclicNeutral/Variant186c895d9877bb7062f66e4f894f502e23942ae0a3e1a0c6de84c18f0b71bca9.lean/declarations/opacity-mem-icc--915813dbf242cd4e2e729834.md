# opacity_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f20725-0a40-89b8-59b8-15a96e2c0778",
  "kind": "theorem",
  "lexical_name": "opacity_mem_Icc",
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
  "slug": "opacity-mem-icc--915813dbf242cd4e2e729834",
  "source": {
    "blob": "8bfc05300dea8de3a0b8c7eaa0ba0c49290a7a7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 360,
    "path": "GRWTSK/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:915813dbf242cd4e2e7298344c9f00b718b9900ac0bbe6cc2b4327717b8ffb44",
  "verification": {
    "reference": "docs/verification/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f20725-0a40-89b8-59b8-15a96e2c0778`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opacity_mem_Icc (t : ℝ) : opacity t ∈ Set.Icc (0 : ℝ) 1 := by
  have hq : opacityBase t ∈ Set.Icc (0 : ℝ) 1 := by
    simpa [greenShift] using greenShift_mem_Icc t
  have hsNonnegative : 0 ≤ |Real.sin (phaseAngle t)| := abs_nonneg _
  have hsAtMostOne : |Real.sin (phaseAngle t)| ≤ 1 :=
    Real.abs_sin_le_one (phaseAngle t)
  have hRemainderNonnegative : 0 ≤ 1 - opacityBase t := sub_nonneg.mpr hq.2
  constructor
  · rw [opacity]
    exact add_nonneg hq.1 (mul_nonneg hRemainderNonnegative hsNonnegative)
  · rw [opacity]
    have hProduct := mul_le_mul_of_nonneg_left hsAtMostOne hRemainderNonnegative
    linarith

@[surface_novel, surface_published, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CyclicNeutral/Variant186c895d9877bb7062f66e4f894f502e23942ae0a3e1a0c6de84c18f0b71bca9.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bfc05300dea8de3a0b8c7eaa0ba0c49290a7a7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
