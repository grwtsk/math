# siftedSum_le_mainSum_errSum_of_upperMoebius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0ffa4d2b7ed763496737bc3100d210365d038a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13608270-9275-ddf9-a480-659ef03ad8b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28faab10-5887-cc18-ced6-9de27e0b2571",
  "kind": "theorem",
  "lexical_name": "siftedSum_le_mainSum_errSum_of_upperMoebius",
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
  "slug": "siftedsum-le-mainsum-errsum-of-uppermoebius--530ca934cb0ca96a3377e2b8",
  "source": {
    "blob": "f0ffa4d2b7ed763496737bc3100d210365d038a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 241,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530ca934cb0ca96a3377e2b8b88aea04e018b552a86f99ebf349ba174a164c47",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28faab10-5887-cc18-ced6-9de27e0b2571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem siftedSum_le_mainSum_errSum_of_upperMoebius (muPlus : ℕ → ℝ) (h : IsUpperMoebius muPlus) :
    siftedSum ≤ X * mainSum muPlus + errSum muPlus := calc
  siftedSum ≤ ∑ d ∈ divisors P, muPlus d * multSum d :=
    siftedSum_le_sum_of_upperMoebius _ h
  _ = X * mainSum muPlus + ∑ d ∈ divisors P, muPlus d * R d := by
    rw [mainSum, mul_sum, ←sum_add_distrib]
    congr with d
    dsimp only [rem]; ring
  _ ≤ X * mainSum muPlus + errSum muPlus := by
    rw [errSum]
    gcongr _ + ∑ d ∈ _, ?_ with d
    rw [←abs_mul]
    exact le_abs_self (muPlus d * R d)

end SelbergSieve
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant06e6f48b85a8e30dbaf24c78329519d66334d62244d2b5c99c7a066dc5d6ae48.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0ffa4d2b7ed763496737bc3100d210365d038a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
