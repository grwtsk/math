# prime_three_centering_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b2140826d1a640d0c6f7a3ee1effab23a7c01eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23bc8a90-6315-4e27-a4bb-f69cf212285a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a792d4d3-95e0-e014-9ba3-82d630fcf85e",
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
  "slug": "prime-three-centering-fixture--9bc688b8aaf78ab4cbbf65ac",
  "source": {
    "blob": "6b2140826d1a640d0c6f7a3ee1effab23a7c01eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 285,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bc688b8aaf78ab4cbbf65ac9543e675dcd96ff9157329040a84eed035c466c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a792d4d3-95e0-e014-9ba3-82d630fcf85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–308.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourcePrimeDisclosure/Variant71976d220040109dd1109c0f9e04f4a870921c828a9a0574419dc645e951d7dc.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b2140826d1a640d0c6f7a3ee1effab23a7c01eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
