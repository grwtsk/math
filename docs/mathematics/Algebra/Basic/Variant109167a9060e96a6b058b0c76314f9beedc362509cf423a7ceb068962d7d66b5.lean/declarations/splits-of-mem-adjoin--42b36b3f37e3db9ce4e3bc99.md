# splits_of_mem_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a757179b63811a24a4328ea3c6bb2a7bd6c12f77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7ab60a8-a671-47b6-09d3-bb3579469dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a98de4b-0acf-33d7-4fbb-cab2cd6f95cd",
  "kind": "theorem",
  "lexical_name": "splits_of_mem_adjoin",
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
  "slug": "splits-of-mem-adjoin--42b36b3f37e3db9ce4e3bc99",
  "source": {
    "blob": "a757179b63811a24a4328ea3c6bb2a7bd6c12f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 114,
    "path": "GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42b36b3f37e3db9ce4e3bc99e358f56f3b6f18602ca023fe8bc9ffef5415f505",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a98de4b-0acf-33d7-4fbb-cab2cd6f95cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_of_mem_adjoin {L} [Field L] [Algebra F L] {S : Set K}
    (splits : ∀ x ∈ S, IsIntegral F x ∧ (minpoly F x).Splits (algebraMap F L)) {x : K}
    (hx : x ∈ adjoin F S) : (minpoly F x).Splits (algebraMap F L) := by
  let E : IntermediateField F L := ⨆ x : S, adjoin F ((minpoly F x.val).rootSet L)
  have normal : Normal F E := normal_iSup (h := fun x ↦
    Normal.of_isSplittingField (hFEp := adjoin_rootSet_isSplittingField (splits x x.2).2))
  have : ∀ x ∈ S, (minpoly F x).Splits (algebraMap F E) := fun x hx ↦ splits_of_splits
    (splits x hx).2 fun y hy ↦ (le_iSup _ ⟨x, hx⟩ : _ ≤ E) (subset_adjoin F _ <| by exact hy)
  obtain ⟨φ⟩ := nonempty_algHom_adjoin_of_splits fun x hx ↦ ⟨(splits x hx).1, this x hx⟩
  convert splits_comp_of_splits _ E.val.toRingHom (normal.splits <| φ ⟨x, hx⟩)
  rw [minpoly.algHom_eq _ φ.injective, ← minpoly.algHom_eq _ (adjoin F S).val.injective, val_mk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant109167a9060e96a6b058b0c76314f9beedc362509cf423a7ceb068962d7d66b5.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a757179b63811a24a4328ea3c6bb2a7bd6c12f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
