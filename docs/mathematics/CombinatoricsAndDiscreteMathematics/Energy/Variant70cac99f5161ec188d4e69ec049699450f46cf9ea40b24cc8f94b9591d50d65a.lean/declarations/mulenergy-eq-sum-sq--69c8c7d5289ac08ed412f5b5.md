# mulEnergy_eq_sum_sq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae878c3b-0dd9-7a15-6a85-f950764d6fd1",
  "kind": "lemma",
  "lexical_name": "mulEnergy_eq_sum_sq'",
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
  "slug": "mulenergy-eq-sum-sq--69c8c7d5289ac08ed412f5b5",
  "source": {
    "blob": "7d5e9af16f25c9150446c496520151af447bffd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69c8c7d5289ac08ed412f5b5d3740174f9ee3e3bd926ed6f9487741c4ed84b60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae878c3b-0dd9-7a15-6a85-f950764d6fd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma mulEnergy_eq_sum_sq' (s t : Finset α) :
    Eₘ[s, t] = ∑ a ∈ s * t, ((s ×ˢ t).filter fun (x, y) ↦ x * y = a).card ^ 2 := by
  simp_rw [mulEnergy_eq_card_filter, sq, ← card_product]
  rw [← card_disjiUnion]
  -- The `swap`, `ext` and `simp` calls significantly reduce heartbeats
  swap
  · simp only [Set.PairwiseDisjoint, Set.Pairwise, coe_mul, ne_eq, disjoint_left, mem_product,
      mem_filter, not_and, and_imp, Prod.forall]
    aesop
  · congr
    ext
    simp only [mem_filter, mem_product, disjiUnion_eq_biUnion, mem_biUnion]
    aesop (add unsafe mul_mem_mul)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5e9af16f25c9150446c496520151af447bffd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
