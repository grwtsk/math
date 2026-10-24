# prod_finset_sum_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2090,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8f007c5-cbf1-58e6-29e9-32d981ef8b5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ed5ac16-8d40-e08f-6bf0-d962c6141486",
  "kind": "theorem",
  "lexical_name": "prod_finset_sum_index",
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
  "slug": "prod-finset-sum-index--6fdb4d375ff33533c7d38b74",
  "source": {
    "blob": "cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2101,
    "line": 2090,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fdb4d375ff33533c7d38b740dac813f4cc83cd7044634cc32bdcc0279b05bfd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed5ac16-8d40-e08f-6bf0-d962c6141486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2090–2101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_finset_sum_index {γ : Type w} {α : Type x} [∀ i, AddCommMonoid (β i)]
    [∀ (i) (x : β i), Decidable (x ≠ 0)] [CommMonoid γ] {s : Finset α} {g : α → Π₀ i, β i}
    {h : ∀ i, β i → γ} (h_zero : ∀ i, h i 0 = 1)
    (h_add : ∀ i b₁ b₂, h i (b₁ + b₂) = h i b₁ * h i b₂) :
    (∏ i in s, (g i).prod h) = (∑ i in s, g i).prod h := by
  classical
  exact Finset.induction_on s (by simp [prod_zero_index])
        (by simp (config := { contextual := true }) [prod_add_index, h_zero, h_add])
#align dfinsupp.prod_finset_sum_index DFinsupp.prod_finset_sum_index
#align dfinsupp.sum_finset_sum_index DFinsupp.sum_finset_sum_index

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean#L2090).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
