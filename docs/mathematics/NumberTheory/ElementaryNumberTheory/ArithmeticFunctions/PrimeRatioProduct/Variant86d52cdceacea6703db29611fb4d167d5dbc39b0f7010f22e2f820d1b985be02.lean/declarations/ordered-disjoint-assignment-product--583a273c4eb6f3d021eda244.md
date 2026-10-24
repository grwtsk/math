# ordered_disjoint_assignment_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5d4734d0c4d592230a3b73dbed045282c1bc9ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a40736a-4c82-e396-9bd6-af6d0f550667",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a8a8a8b-1f48-0c07-3327-38e4601be3f0",
  "kind": "theorem",
  "lexical_name": "ordered_disjoint_assignment_product",
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
  "slug": "ordered-disjoint-assignment-product--583a273c4eb6f3d021eda244",
  "source": {
    "blob": "a5d4734d0c4d592230a3b73dbed045282c1bc9ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 16,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:583a273c4eb6f3d021eda2448927f5085fa887b0a42dcd2782cd1106af28c7f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a8a8a8b-1f48-0c07-3327-38e4601be3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordered_disjoint_assignment_product (P : Finset ℕ) (w : ℕ → ℝ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
      (∏ p ∈ U, w p) * (∏ p ∈ V, w p)) = ∏ p ∈ P, (1 + 2 * w p) := by
  calc
    _ = ∑ U ∈ P.powerset, (∏ p ∈ U, w p) * (∏ p ∈ P \ U, (1 + w p)) := by
      simp_rw [prod_one_add, mul_sum]
    _ = ∏ p ∈ P, (w p + (1 + w p)) := (prod_add w (fun p ↦ 1 + w p) P).symm
    _ = _ := by
      apply prod_congr rfl
      intro p _
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variant86d52cdceacea6703db29611fb4d167d5dbc39b0f7010f22e2f820d1b985be02.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d4734d0c4d592230a3b73dbed045282c1bc9ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
