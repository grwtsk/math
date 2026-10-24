# actual_source_reflected_entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bad1c0fe-438a-c572-7e06-bb90e1224001",
  "kind": "theorem",
  "lexical_name": "actual_source_reflected_entry",
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
  "slug": "actual-source-reflected-entry--f4ff99645c6f7b03bf0fd2df",
  "source": {
    "blob": "bf8a2f20f6946f9ca5de6a55996135285ff0796a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 257,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4ff99645c6f7b03bf0fd2df283c8b2847bdc761b3ffd73554d7e482ce1ad789",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad1c0fe-438a-c572-7e06-bb90e1224001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_reflected_entry {A : ℝ} (hA : 0 < A) (m n : ℕ) :
    ⟪translation (Real.log m) (originalSourceState A),
      reflection (translation (Real.log n) (originalSourceState A))⟫_ℂ =
      (sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n) : ℂ) := by
  rw [reflection_translation_reverse,
    actual_source_even hA _ (originalSourceState_coe_ae hA),
    translation_inner_stationary, actual_source_correlation_complex hA]
  have h := sourceCorrelation_even A (Real.log m + Real.log n)
  rw [show -(Real.log m + Real.log n) = -Real.log n - Real.log m by ring] at h
  exact congrArg Complex.ofReal h

/-- The actual positive/negative first-prime translate pair is reflection-even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SourceGramQuotient/Variant5623445faa82d87ff2bbc192cd3c48192125d966cc96d660869e486374c2e70e.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8a2f20f6946f9ca5de6a55996135285ff0796a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
