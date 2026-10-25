# no_uniform_bridge_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9cfabc7-dda9-fe6e-83a4-166301d5b3c7",
  "kind": "theorem",
  "lexical_name": "no_uniform_bridge_budget",
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
  "slug": "no-uniform-bridge-budget--72623f09fd00f3b553697ba9",
  "source": {
    "blob": "c9abd4dae1c1f145563c0e63a6d86e23a64e4157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72623f09fd00f3b553697ba9e600b824daf513f6985a9e3b74dc4a282230b288",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9cfabc7-dda9-fe6e-83a4-166301d5b3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_uniform_bridge_budget :
    ¬∃ C : ℝ,∀ A : ℝ,1≤A→
      |integralBridge (linearRangeProfile (2*A)) (2*A) A|≤C := by
  rintro ⟨C,hC⟩
  let A : ℝ := max 1 (4*C+1)
  have hA : 1≤A := le_max_left _ _
  have hh := hC A hA
  rw [linearRangeProfile_midpoint (by linarith : 0<A)] at hh
  have hAC : 4*C+1≤A := le_max_right _ _
  linarith

#print axioms linearRangeProfile
#print axioms linearRangeProfile_continuous
#print axioms linearRangeProfile_bounds
#print axioms linearRangeProfile_integral
#print axioms linearRangeProfile_bridge
#print axioms linearRangeProfile_midpoint
#print axioms no_uniform_bridge_budget
end ContinuousResearch.BridgeRangeDiagnostic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BridgeRangeDiagnosticAttempt02/Variant0c1f07f8423095fa1f0e58a8cc61b883dac461b1c9369f26e4e1060788b1dce7.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9abd4dae1c1f145563c0e63a6d86e23a64e4157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
