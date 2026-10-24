# quadratic_difference_eq_combined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebd9943e-79b7-985a-e294-94bceddf515b",
  "kind": "theorem",
  "lexical_name": "quadratic_difference_eq_combined",
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
  "slug": "quadratic-difference-eq-combined--e33a76751b4a9f2e2c863d6d",
  "source": {
    "blob": "1b36a5d739e9eaa7ad5067d0514b83b4557697ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e33a76751b4a9f2e2c863d6d37470960d21f4a307bd157c7f11640b92f6ce9cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd9943e-79b7-985a-e294-94bceddf515b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_difference_eq_combined [CompleteSpace H]
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (x y : H) :
    quadraticReadout K x - quadraticReadout K y = (⟪x - y, K (x + y)⟫_ℂ).re := by
  simp only [quadraticReadout, map_add, inner_sub_left, inner_add_right,
    Complex.sub_re, Complex.add_re]
  rw [real_cross_selfAdjoint K hK x y]
  ring

/-- The diagonal and both real cross contributions remain in the signed increment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant004e0aa6a735448b55088deda7bdc4add1eb36289ab70ab81f23d99595000313.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b36a5d739e9eaa7ad5067d0514b83b4557697ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
