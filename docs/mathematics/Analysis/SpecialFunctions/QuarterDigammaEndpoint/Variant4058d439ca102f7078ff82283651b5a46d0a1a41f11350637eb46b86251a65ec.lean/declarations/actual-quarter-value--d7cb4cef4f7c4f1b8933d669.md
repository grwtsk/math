# actual_quarter_value

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f182732b-8fca-858d-4bbe-9924dd53c242",
  "kind": "theorem",
  "lexical_name": "actual_quarter_value",
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
  "slug": "actual-quarter-value--d7cb4cef4f7c4f1b8933d669",
  "source": {
    "blob": "ece6d1d1495fb31b223deecfd752ed98789ff21d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7cb4cef4f7c4f1b8933d6697831794442f9058cea5b247a65f12b2506731a85",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f182732b-8fca-858d-4bbe-9924dd53c242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_quarter_value :
    Complex.digamma (1/4) = -(Real.eulerMascheroniConstant:ℂ) -
      3*Complex.log 2 - (Real.pi:ℂ)/2 := by
  have hplus := duplication_quarter
  rw [Complex.digamma_one_half] at hplus
  linear_combination (hplus + reflection_quarter)/2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant4058d439ca102f7078ff82283651b5a46d0a1a41f11350637eb46b86251a65ec.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece6d1d1495fb31b223deecfd752ed98789ff21d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
