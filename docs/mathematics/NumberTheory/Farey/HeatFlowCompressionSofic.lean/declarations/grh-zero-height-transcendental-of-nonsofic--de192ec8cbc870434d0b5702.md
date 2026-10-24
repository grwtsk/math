# grh_zero_height_transcendental_of_nonsofic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd25dca-8500-55a5-1ab4-07ef254160ee",
  "kind": "theorem",
  "lexical_name": "grh_zero_height_transcendental_of_nonsofic",
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
  "slug": "grh-zero-height-transcendental-of-nonsofic--de192ec8cbc870434d0b5702",
  "source": {
    "blob": "290757773fe6f295c025287d0d673d9d82c773df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 238,
    "path": "GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de192ec8cbc870434d0b57020dc83e2507abd15fbb68b57f3e92b1a324008b66",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd25dca-8500-55a5-1ab4-07ef254160ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grh_zero_height_transcendental_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (isZero onCriticalLine : X → Prop)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop)
    (hGRH : GRHFor isZero onCriticalLine)
    (algebraic_implies_sofic :
      ∀ z, isZero z → onCriticalLine z →
        arithmetic.algebraic (height z) → sofic (trace z))
    (zero_trace_nonsofic :
      ∀ z, isZero z → ¬ sofic (trace z)) :
    ∀ z, isZero z →
      onCriticalLine z ∧
        IsIrrational arithmetic (height z) ∧
        IsTranscendental arithmetic (height z) := by
  intro z hz
  have hLine : onCriticalLine z := hGRH z hz
  have hTranscendental : IsTranscendental arithmetic (height z) := by
    intro hAlgebraic
    exact zero_trace_nonsofic z hz
      (algebraic_implies_sofic z hz hLine hAlgebraic)
  have hIrrational : IsIrrational arithmetic (height z) :=
    irrational_of_transcendental arithmetic (height z) hTranscendental
  exact ⟨hLine, hIrrational, hTranscendental⟩

/-- Exact split matching the proposed contradiction architecture:
irrationality is obtained from a rational-to-sofic obstruction without using
GRH; after GRH places the same zero on the critical line, a stronger
algebraic-to-sofic obstruction yields transcendence. Neither arithmetic bridge
nor non-soficity is constructed here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290757773fe6f295c025287d0d673d9d82c773df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
