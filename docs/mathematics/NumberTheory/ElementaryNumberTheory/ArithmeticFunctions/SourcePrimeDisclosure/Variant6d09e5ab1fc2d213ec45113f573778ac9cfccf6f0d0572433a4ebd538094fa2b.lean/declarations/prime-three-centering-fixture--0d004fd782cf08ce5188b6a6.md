# prime_three_centering_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cadc476-25f4-51bf-def0-0aa7a8ef8811",
  "kind": "theorem",
  "lexical_name": "prime_three_centering_fixture",
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
  "slug": "prime-three-centering-fixture--0d004fd782cf08ce5188b6a6",
  "source": {
    "blob": "0016f32ce7bbe576202a2ff26341fb06622746f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 293,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d004fd782cf08ce5188b6a69c0a57162fda5f9b2041d4b9fffc27d6e99a4bdf",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cadc476-25f4-51bf-def0-0aa7a8ef8811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_three_centering_fixture :
    freshPrimeCorrection 3 (primeDivisors {2} (6 / 3)) 7 = -(1 / 6 : ℝ) ∧
    freshPrimeCorrection 3 (primeDivisors {2} (6 / 3)) 9 = (5 / 6 : ℝ) ∧
    freshPrimeCorrection 3 (primeDivisors {2} (6 / 3)) 12 = -(1 / 6 : ℝ) := by
  have hE : primeDivisors {2} (6 / 3) = {1, 2} := by
    change primeDivisors (insert 2 ∅) 2 = {1, 2}
    rw [primeDivisors_insert ∅ 2 2 (by decide) (by simp)]
    norm_num [primeDivisors, Finset.filter_singleton]
    ext x
    simp only [Finset.mem_union, Finset.mem_singleton, Finset.mem_insert]
    tauto
  rw [hE]
  norm_num [freshPrimeCorrection, disclosedMean, disclosedDivisorSum,
    ArithmeticFunction.moebius_apply_prime Nat.prime_two]

end RH16Tandem.SourcePrimeDisclosure

#print axioms RH16Tandem.SourcePrimeDisclosure.primeDivisors_insert
#print axioms RH16Tandem.SourcePrimeDisclosure.centeredDisclosure_coverage
#print axioms RH16Tandem.SourcePrimeDisclosure.centeredDisclosure_primeDivisors_insert
#print axioms RH16Tandem.SourcePrimeDisclosure.disclosureSource_primeDivisors_insert
#print axioms RH16Tandem.SourcePrimeDisclosure.compensatedReadout_two_row_increment
#print axioms RH16Tandem.SourcePrimeDisclosure.prime_power_mangoldt_coefficient
#print axioms RH16Tandem.SourcePrimeDisclosure.prime_three_centering_fixture
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant6d09e5ab1fc2d213ec45113f573778ac9cfccf6f0d0572433a4ebd538094fa2b.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0016f32ce7bbe576202a2ff26341fb06622746f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
