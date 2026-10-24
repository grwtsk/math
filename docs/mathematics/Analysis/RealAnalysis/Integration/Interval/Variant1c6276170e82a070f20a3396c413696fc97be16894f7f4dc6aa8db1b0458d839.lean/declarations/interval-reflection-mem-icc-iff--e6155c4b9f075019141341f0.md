# interval_reflection_mem_Icc_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16dcd169-c669-341d-c236-b82b9f249f3e",
  "kind": "theorem",
  "lexical_name": "interval_reflection_mem_Icc_iff",
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
  "slug": "interval-reflection-mem-icc-iff--e6155c4b9f075019141341f0",
  "source": {
    "blob": "d9c7c85022e1d8459d0c0f4d771152753dc01c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6155c4b9f075019141341f01a93cc1fad7fb200580360004fd420d41d0708b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16dcd169-c669-341d-c236-b82b9f249f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interval_reflection_mem_Icc_iff (a b t : ℝ) :
    intervalReflection a b t ∈ Set.Icc a b ↔ t ∈ Set.Icc a b := by
  simp only [Set.mem_Icc, intervalReflection]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor <;> linarith

/-- The reflection-even part of a real function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Interval/Variant1c6276170e82a070f20a3396c413696fc97be16894f7f4dc6aa8db1b0458d839.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9c7c85022e1d8459d0c0f4d771152753dc01c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
