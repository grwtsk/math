# intervalIntegral_add_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94d5c727-d802-fd62-ebad-9ffc0598344e",
  "kind": "theorem",
  "lexical_name": "intervalIntegral_add_eq",
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
  "slug": "intervalintegral-add-eq--f69db46403a0f3b4d886c8cd",
  "source": {
    "blob": "11f88e4f81eff4a22bb313a8a35a02a852844311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 281,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f69db46403a0f3b4d886c8cdb08acfd2ef08252ef555844c8d5db6d5de1d2e8e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d5c727-d802-fd62-ebad-9ffc0598344e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegral_add_eq (hf : Periodic f T) (t s : ℝ) :
    ∫ x in t..t + T, f x = ∫ x in s..s + T, f x := by
  rcases lt_trichotomy (0 : ℝ) T with (hT | rfl | hT)
  · exact hf.intervalIntegral_add_eq_of_pos hT t s
  · simp
  · rw [← neg_inj, ← integral_symm, ← integral_symm]
    simpa only [← sub_eq_add_neg, add_sub_cancel] using
      hf.neg.intervalIntegral_add_eq_of_pos (neg_pos.2 hT) (t + T) (s + T)
#align function.periodic.interval_integral_add_eq Function.Periodic.intervalIntegral_add_eq

/-- If `f` is an integrable periodic function with period `T`, then its integral over `[t, s + T]`
is the sum of its integrals over the intervals `[t, s]` and `[t, t + T]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variant4d56aeba53a40deb39fd652875d611a1845f5d91a8c3c5282d3db43f2168cd74.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f88e4f81eff4a22bb313a8a35a02a852844311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
