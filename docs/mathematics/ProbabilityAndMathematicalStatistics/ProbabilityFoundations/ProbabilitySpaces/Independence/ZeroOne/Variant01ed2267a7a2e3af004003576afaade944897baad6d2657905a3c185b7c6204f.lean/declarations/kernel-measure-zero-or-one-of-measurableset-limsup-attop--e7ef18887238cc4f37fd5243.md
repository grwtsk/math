# Kernel.measure_zero_or_one_of_measurableSet_limsup_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3a8ba6a-cd7a-7c1d-f5ca-7445fd4ca9b4",
  "kind": "theorem",
  "lexical_name": "Kernel.measure_zero_or_one_of_measurableSet_limsup_atTop",
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
  "slug": "kernel-measure-zero-or-one-of-measurableset-limsup-attop--e7ef18887238cc4f37fd5243",
  "source": {
    "blob": "dd8a82532592e7e0240ac9dd4997280ff8d07fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 279,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7ef18887238cc4f37fd52437185d86854132034f4acb61ca5e62ee1d9aa14f9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3a8ba6a-cd7a-7c1d-f5ca-7445fd4ca9b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Kernel.measure_zero_or_one_of_measurableSet_limsup_atTop (h_le : ∀ n, s n ≤ m0)
    (h_indep : iIndep s κ μα) {t : Set Ω} (ht_tail : MeasurableSet[limsup s atTop] t) :
    ∀ᵐ a ∂μα, κ a t = 0 ∨ κ a t = 1 := by
  apply measure_eq_zero_or_one_of_indepSet_self' ?_
    ((indep_limsup_atTop_self h_le h_indep).indepSet_of_measurableSet ht_tail ht_tail)
  filter_upwards [h_indep.ae_isProbabilityMeasure] with a ha using by infer_instance

/-- **Kolmogorov's 0-1 law** : any event in the tail σ-algebra of an independent sequence of
sub-σ-algebras has probability 0 or 1.
The tail σ-algebra `limsup s atTop` is the same as `⋂ n, ⋃ i ≥ n, s i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/ZeroOne/Variant01ed2267a7a2e3af004003576afaade944897baad6d2657905a3c185b7c6204f.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd8a82532592e7e0240ac9dd4997280ff8d07fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
