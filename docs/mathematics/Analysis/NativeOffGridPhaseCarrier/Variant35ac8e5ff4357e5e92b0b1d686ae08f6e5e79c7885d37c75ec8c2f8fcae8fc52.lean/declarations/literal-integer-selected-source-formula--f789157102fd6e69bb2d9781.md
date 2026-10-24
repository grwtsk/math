# literal_integer_selected_source_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f244fdd-9e8a-3504-4210-c2c8fbf76468",
  "kind": "theorem",
  "lexical_name": "literal_integer_selected_source_formula",
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
  "slug": "literal-integer-selected-source-formula--f789157102fd6e69bb2d9781",
  "source": {
    "blob": "ab327bb686d5347949705f63e8cea619c078a09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f789157102fd6e69bb2d97817515bffe02c84cee8f0a101b5029e2702f517997",
  "verification": {
    "reference": "docs/verification/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f244fdd-9e8a-3504-4210-c2c8fbf76468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_integer_selected_source_formula (n : ℕ) (hn : 1 ≤ (n : ℝ)) :
    phase * exponent * complexTestMoment (n : ℝ) mode ^ 2 =
      -(modeMagnitude (n : ℝ) : ℂ) * complexEndpointCorrection (n : ℝ) mode ^ 2 := by
  rw [literal_phase_selected_source_formula hn, Complex.ofReal_natCast,
    literal_integer_phase_carrier, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NativeOffGridPhaseCarrier/Variant35ac8e5ff4357e5e92b0b1d686ae08f6e5e79c7885d37c75ec8c2f8fcae8fc52.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab327bb686d5347949705f63e8cea619c078a09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
