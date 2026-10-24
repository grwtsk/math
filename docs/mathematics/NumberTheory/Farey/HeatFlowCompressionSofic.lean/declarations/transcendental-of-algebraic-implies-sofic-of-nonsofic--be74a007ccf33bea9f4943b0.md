# transcendental_of_algebraic_implies_sofic_of_nonsofic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ab3906f-bc02-eb10-a0cd-97f614e9ba60",
  "kind": "theorem",
  "lexical_name": "transcendental_of_algebraic_implies_sofic_of_nonsofic",
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
  "slug": "transcendental-of-algebraic-implies-sofic-of-nonsofic--be74a007ccf33bea9f4943b0",
  "source": {
    "blob": "290757773fe6f295c025287d0d673d9d82c773df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 200,
    "path": "GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be74a007ccf33bea9f4943b0720387c9ef02f5f418a86d86ccb5d1e1ac2c3d6e",
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

Occurrence: `result:5ab3906f-bc02-eb10-a0cd-97f614e9ba60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transcendental_of_algebraic_implies_sofic_of_nonsofic
    {X : Type u} {Trace : Type v} {Height : Type w}
    (arithmetic : HeightArithmetic Height)
    (trace : X → Trace) (height : X → Height)
    (sofic : Trace → Prop) (x : X)
    (algebraic_implies_sofic :
      arithmetic.algebraic (height x) → sofic (trace x))
    (trace_nonsofic : ¬ sofic (trace x)) :
    IsTranscendental arithmetic (height x) := by
  intro hAlgebraic
  exact trace_nonsofic (algebraic_implies_sofic hAlgebraic)

/-- Relative irrationality can be obtained without GRH when rational
height already forces the selected trace into the prohibited sofic class.
This isolates the user's desired unconditional irrationality route from the
separate critical-line/transcendence route. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/HeatFlowCompressionSofic.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290757773fe6f295c025287d0d673d9d82c773df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
