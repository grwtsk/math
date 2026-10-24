# prod_finsetSum_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d8eceec-2fa5-74c6-f5a6-c9056dce597d",
  "kind": "theorem",
  "lexical_name": "prod_finsetSum_index",
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
  "slug": "prod-finsetsum-index--c6ee079f7168e0242501c292",
  "source": {
    "blob": "c1159c0c14b903dea1b83904d8e7f7581bb5ef89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 442,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ee079f7168e0242501c292117c7a0c75642ed55aa8d061c8223f474ead2dfc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d8eceec-2fa5-74c6-f5a6-c9056dce597d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_finsetSum_index {γ : Type w} {α : Type x} [∀ i, AddCommMonoid (β i)]
    [∀ (i) (x : β i), Decidable (x ≠ 0)] [CommMonoid γ] {s : Finset α} {g : α → Π₀ i, β i}
    {h : ∀ i, β i → γ} (h_zero : ∀ i, h i 0 = 1)
    (h_add : ∀ i b₁ b₂, h i (b₁ + b₂) = h i b₁ * h i b₂) :
    (∏ i ∈ s, (g i).prod h) = (∑ i ∈ s, g i).prod h := by
  classical
  exact Finset.induction_on s (by simp [prod_zero_index])
        (by simp +contextual [prod_add_index, h_zero, h_add])

@[deprecated (since := "2026-04-08")] alias sum_finset_sum_index := sum_finsetSum_index

@[to_additive existing, deprecated (since := "2026-04-08")]
alias prod_finset_sum_index := prod_finsetSum_index

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant041a13636c67b09ecf8de63a7c489753173179d86e556985dc34a5ba9046b32b.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1159c0c14b903dea1b83904d8e7f7581bb5ef89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
