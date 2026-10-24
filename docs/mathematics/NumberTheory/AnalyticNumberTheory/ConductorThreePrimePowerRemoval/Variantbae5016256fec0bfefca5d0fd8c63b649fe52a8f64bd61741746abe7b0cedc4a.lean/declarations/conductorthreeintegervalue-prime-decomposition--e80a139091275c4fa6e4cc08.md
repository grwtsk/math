# conductorThreeIntegerValue_prime_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87c674d3fe0da1c54fce8558c8d7826f12c68140",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e182ecd-652a-e9d3-3d3e-9aa7a30f86fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9a8de43-96dd-3e70-5a40-af1da12c824e",
  "kind": "theorem",
  "lexical_name": "conductorThreeIntegerValue_prime_decomposition",
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
  "slug": "conductorthreeintegervalue-prime-decomposition--e80a139091275c4fa6e4cc08",
  "source": {
    "blob": "87c674d3fe0da1c54fce8558c8d7826f12c68140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e80a139091275c4fa6e4cc0893d1b263249f220744471b6cd481683fdba4847b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9a8de43-96dd-3e70-5a40-af1da12c824e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeIntegerValue_prime_decomposition
    {p : ℕ} (hp : p.Prime) :
    conductorThreeIntegerValue p =
      (if IsResidueOnePrime p then 1 else 0) -
      (if IsResidueFivePrime p then 1 else 0) -
      (if p = 2 then 1 else 0) := by
  by_cases hp3 : 3 < p
  · have helig : IsEligibleResidueSixPrime p :=
      (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
    rcases helig with hOne | hFive
    · have hval : conductorThreeIntegerValue p = 1 :=
        (conductorThreeIntegerValue_eq_one_iff_residueOne hp hp3).2 hOne.2
      have hnotFive : ¬ IsResidueFivePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨hOne, h⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hOne, hnotFive, hpne2, hval]
    · have hval : conductorThreeIntegerValue p = -1 :=
        (conductorThreeIntegerValue_eq_neg_one_iff_residueFive hp hp3).2 hFive.2
      have hnotOne : ¬ IsResidueOnePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨h, hFive⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hFive, hnotOne, hpne2, hval]
  · have hpCases : p = 2 ∨ p = 3 := by
      have hp2 := hp.two_le
      omega
    rcases hpCases with rfl | rfl
    · norm_num [conductorThreeIntegerValue_mod_two,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
    · norm_num [conductorThreeIntegerValue_mod_zero,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c674d3fe0da1c54fce8558c8d7826f12c68140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
