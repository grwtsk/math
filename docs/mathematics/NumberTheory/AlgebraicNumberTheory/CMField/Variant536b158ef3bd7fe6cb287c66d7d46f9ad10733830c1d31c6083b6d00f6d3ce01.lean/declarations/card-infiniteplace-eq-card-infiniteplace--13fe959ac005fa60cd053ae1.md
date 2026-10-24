# card_infinitePlace_eq_card_infinitePlace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c7067617742aae433a648031822e84a41746b4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e57a134e-3dd4-a2f7-5570-2a91dbd6ade5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:294c20f5-992f-39c6-3592-2882c7067ddb",
  "kind": "theorem",
  "lexical_name": "card_infinitePlace_eq_card_infinitePlace",
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
  "slug": "card-infiniteplace-eq-card-infiniteplace--13fe959ac005fa60cd053ae1",
  "source": {
    "blob": "6c7067617742aae433a648031822e84a41746b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13fe959ac005fa60cd053ae10ce87bd80a99e2667d9cbad31e2bdc1cae17ce47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:294c20f5-992f-39c6-3592-2882c7067ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_infinitePlace_eq_card_infinitePlace [NumberField K] :
    Fintype.card (InfinitePlace K⁺) = Fintype.card (InfinitePlace K) := by
  rw [card_eq_nrRealPlaces_add_nrComplexPlaces, card_eq_nrRealPlaces_add_nrComplexPlaces,
    IsTotallyComplex.nrRealPlaces_eq_zero K, IsTotallyReal.nrComplexPlaces_eq_zero, zero_add,
    add_zero, ← IsTotallyReal.finrank, ← Nat.mul_left_cancel_iff zero_lt_two,
    ← IsTotallyComplex.finrank, ← Module.finrank_mul_finrank ℚ K⁺ K, mul_comm,
    IsQuadraticExtension.finrank_eq_two _ K]

/--
The equiv between the infinite places of `K` and the infinite places of `K⁺` induced by the
restriction to `K⁺`, see `equivInfinitePlace_apply`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7067617742aae433a648031822e84a41746b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
