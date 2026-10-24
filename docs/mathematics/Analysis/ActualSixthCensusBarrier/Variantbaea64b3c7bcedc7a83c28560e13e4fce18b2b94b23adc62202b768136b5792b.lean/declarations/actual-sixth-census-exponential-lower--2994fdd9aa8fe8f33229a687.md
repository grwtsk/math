# actual_sixth_census_exponential_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834d9b07-068d-52ee-6c76-890829dd488a",
  "kind": "theorem",
  "lexical_name": "actual_sixth_census_exponential_lower",
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
  "slug": "actual-sixth-census-exponential-lower--2994fdd9aa8fe8f33229a687",
  "source": {
    "blob": "98f35bbf918b355a2131d9a6c63579833bdfc9a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2994fdd9aa8fe8f33229a687e822752fff261d7779f3b06e3236722fde5aaa64",
  "verification": {
    "reference": "docs/verification/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834d9b07-068d-52ee-6c76-890829dd488a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_census_exponential_lower {A : ℝ} (hA : 8 ≤ A) :
    (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) - 15 ≤ actualCensus A 6 :=
  (sub_le_sub_right (actual_sixth_squared_moment_lower hA) 15).trans
    (actual_sixth_census_retains_moment hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f35bbf918b355a2131d9a6c63579833bdfc9a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
