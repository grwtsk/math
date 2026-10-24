# weighted_prime_decomposition

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
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15ec1cb0-d996-bcb5-e663-3e504455d6dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51432371-72c4-002c-0e0f-5ff854652a26",
  "kind": "theorem",
  "lexical_name": "weighted_prime_decomposition",
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
  "slug": "weighted-prime-decomposition--423f4275c908368dcb89c9e0",
  "source": {
    "blob": "87c674d3fe0da1c54fce8558c8d7826f12c68140",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:423f4275c908368dcb89c9e0a0832ec363b2df8cf9ff2930c2a7f4db6c936fed",
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

Occurrence: `result:51432371-72c4-002c-0e0f-5ff854652a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_prime_decomposition {p : ℕ} (hp : p.Prime) :
    (conductorThreeIntegerValue p : ℝ) * Real.log p =
      (if IsResidueOnePrime p then Real.log p else 0) -
      (if IsResidueFivePrime p then Real.log p else 0) -
      (if p = 2 then Real.log p else 0) := by
  rw [conductorThreeIntegerValue_prime_decomposition hp]
  push_cast
  by_cases h2 : p = 2
  · subst p
    norm_num [IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
  · by_cases hOne : IsResidueOnePrime p <;>
      by_cases hFive : IsResidueFivePrime p <;>
      simp [hOne, hFive, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ConductorThreePrimePowerRemoval/Variantbae5016256fec0bfefca5d0fd8c63b649fe52a8f64bd61741746abe7b0cedc4a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c674d3fe0da1c54fce8558c8d7826f12c68140` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
