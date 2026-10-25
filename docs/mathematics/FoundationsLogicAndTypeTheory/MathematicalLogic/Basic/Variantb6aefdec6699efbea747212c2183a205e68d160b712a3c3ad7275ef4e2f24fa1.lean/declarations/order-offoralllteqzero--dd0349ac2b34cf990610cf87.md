# order_ofForallLtEqZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a55ac28b69392ddbabe0d245b1cb3c7e649532",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 504,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b81f739-0500-6535-f8cf-5cd50f9a3e77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1901c19-23e3-1caf-e024-4565ef903c8f",
  "kind": "theorem",
  "lexical_name": "order_ofForallLtEqZero",
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
  "slug": "order-offoralllteqzero--dd0349ac2b34cf990610cf87",
  "source": {
    "blob": "41a55ac28b69392ddbabe0d245b1cb3c7e649532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 504,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0349ac2b34cf990610cf87a990db1d1190df36af36bdb16e851137b97e516f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1901c19-23e3-1caf-e024-4565ef903c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_ofForallLtEqZero [Zero Γ] (f : Γ → R) (hf : f ≠ 0) (n : Γ)
    (hn : ∀ (m : Γ), m < n → f m = 0) :
    n ≤ order (ofSuppBddBelow f (forallLTEqZero_supp_BddBelow f n hn)) := by
  dsimp only [order]
  by_cases h : ofSuppBddBelow f (forallLTEqZero_supp_BddBelow f n hn) = 0
  cases h
  · exact (hf rfl).elim
  simp_all only [dite_false]
  rw [Set.IsWF.le_min_iff]
  intro m hm
  rw [HahnSeries.support, Function.mem_support, ne_eq] at hm
  exact not_lt.mp (mt (hn m) hm)

end LocallyFiniteLinearOrder

end HahnSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a55ac28b69392ddbabe0d245b1cb3c7e649532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
