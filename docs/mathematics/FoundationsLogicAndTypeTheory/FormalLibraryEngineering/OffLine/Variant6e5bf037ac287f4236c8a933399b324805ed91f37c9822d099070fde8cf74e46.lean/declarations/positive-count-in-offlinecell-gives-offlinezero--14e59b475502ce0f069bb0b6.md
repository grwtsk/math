# positive_count_in_offLineCell_gives_offLineZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87d9d214-1d4b-f842-674b-d7b13d33f63e",
  "kind": "theorem",
  "lexical_name": "positive_count_in_offLineCell_gives_offLineZero",
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
  "slug": "positive-count-in-offlinecell-gives-offlinezero--14e59b475502ce0f069bb0b6",
  "source": {
    "blob": "7deec47d0110294fa466b4422e76e07a45596808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OffLine/Variant6e5bf037ac287f4236c8a933399b324805ed91f37c9822d099070fde8cf74e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14e59b475502ce0f069bb0b67a3947afe820ceba341c71a2c0d58e9cf4db92d4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OffLine/Variant6e5bf037ac287f4236c8a933399b324805ed91f37c9822d099070fde8cf74e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d9d214-1d4b-f842-674b-d7b13d33f63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_count_in_offLineCell_gives_offLineZero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (certificate :
      CertifiedOffLineZero authority) :
    ∃ z,
      z ∈ certificate.cell.interior ∧
      xi z = 0 ∧
      z.re ≠ (1 : ℝ) / 2 := by
  have divisorPositive :
      0 <
        (authority.divisor
          certificate.cell).count := by
    rw [certificate.count.countSound]
    exact certificate.positiveCount
  obtain ⟨z, zMem, zZero⟩ :=
    (authority.divisor certificate.cell)
      |>.exists_zero_of_count_pos divisorPositive
  refine ⟨z, zMem, zZero, ?_⟩
  intro onLine
  have inCarrier :
      z ∈ certificate.cell.carrier :=
    certificate.cell.interior_subset zMem
  have separated :=
    certificate.offLine.separated z inCarrier
  rw [onLine] at separated
  norm_num at separated
  linarith [certificate.offLine.separation_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OffLine/Variant6e5bf037ac287f4236c8a933399b324805ed91f37c9822d099070fde8cf74e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OffLine/Variant6e5bf037ac287f4236c8a933399b324805ed91f37c9822d099070fde8cf74e46.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7deec47d0110294fa466b4422e76e07a45596808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
