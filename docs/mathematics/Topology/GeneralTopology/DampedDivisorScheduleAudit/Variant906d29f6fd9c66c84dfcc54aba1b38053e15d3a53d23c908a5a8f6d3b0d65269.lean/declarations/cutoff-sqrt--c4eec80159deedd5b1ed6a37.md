# cutoff_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:debfb46a-ae60-1c33-1b9e-7c00b5044bf0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5e8ff6c-6e30-ba97-5d34-eb175c009834",
  "kind": "theorem",
  "lexical_name": "cutoff_sqrt",
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
  "slug": "cutoff-sqrt--c4eec80159deedd5b1ed6a37",
  "source": {
    "blob": "9cb1f8288c414f04de7612ebb9498e02053c2851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4eec80159deedd5b1ed6a37de33d39ef622c8c769d15aa8b0d4fc5ff575c9c9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e8ff6c-6e30-ba97-5d34-eb175c009834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cutoff_sqrt (X : ℕ) (hX : 1 ≤ X) :
    Real.sqrt (cutoffSchedule X) = (X : ℝ) * logScale X * Real.sqrt (X : ℝ) := by
  obtain ⟨hx, hL, _⟩ := scale_facts X hX
  unfold cutoffSchedule
  rw [show (X : ℝ) ^ 3 * logScale X ^ 2 =
    ((X : ℝ) * logScale X) ^ 2 * (X : ℝ) by ring,
    Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (by positivity)]

/-- The faster damping retains the original source cap and the unchanged expanding cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variant906d29f6fd9c66c84dfcc54aba1b38053e15d3a53d23c908a5a8f6d3b0d65269.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb1f8288c414f04de7612ebb9498e02053c2851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
