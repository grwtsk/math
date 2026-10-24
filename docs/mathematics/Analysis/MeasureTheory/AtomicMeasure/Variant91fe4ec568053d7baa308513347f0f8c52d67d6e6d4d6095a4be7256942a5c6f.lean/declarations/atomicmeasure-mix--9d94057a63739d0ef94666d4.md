# atomicMeasure_mix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28343ac7-40ae-2eb1-8212-47897699b03a",
  "kind": "theorem",
  "lexical_name": "atomicMeasure_mix",
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
  "slug": "atomicmeasure-mix--9d94057a63739d0ef94666d4",
  "source": {
    "blob": "2d4f5e915a81fe8287c6d8d5c5af0e034823cc87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 88,
    "path": "GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d94057a63739d0ef94666d42faf0cc5ae7ac9e369b854ac0b2265e285a014d0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28343ac7-40ae-2eb1-8212-47897699b03a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atomicMeasure_mix
    (outer : BitMatrix.Probability.SimplexPoint I)
    (packets : ∀ i, FinitePacket (Outcomes i)) :
    (mix outer packets).atomicMeasure = mixedAtomicMeasure outer packets := by
  ext event measurable
  rw [atomicMeasure_event, spectralEventProbability_mix]
  unfold mixedAtomicMeasure
  rw [Measure.finsetSum_apply]
  rw [ENNReal.ofReal_sum_of_nonneg]
  · apply Finset.sum_congr rfl
    intro i _
    rw [Measure.smul_apply, atomicMeasure_event]
    change ENNReal.ofReal
        (outer i * (packets i).spectralEventProbability event) =
      ENNReal.ofReal (outer i) *
        ENNReal.ofReal ((packets i).spectralEventProbability event)
    exact ENNReal.ofReal_mul (outer.nonnegative i)
  · intro i _
    exact mul_nonneg (outer.nonnegative i)
      ((packets i).spectralEventProbability_nonnegative event)

end

end BitMatrix.Spectral.FinitePacket
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variant91fe4ec568053d7baa308513347f0f8c52d67d6e6d4d6095a4be7256942a5c6f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4f5e915a81fe8287c6d8d5c5af0e034823cc87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
