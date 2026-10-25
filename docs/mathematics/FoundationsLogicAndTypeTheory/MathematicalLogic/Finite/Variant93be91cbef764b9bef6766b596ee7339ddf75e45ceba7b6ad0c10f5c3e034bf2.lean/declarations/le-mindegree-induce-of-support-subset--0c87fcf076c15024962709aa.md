# le_minDegree_induce_of_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b303c258-a6ec-bdd5-d7ec-704a1b488bee",
  "kind": "theorem",
  "lexical_name": "le_minDegree_induce_of_support_subset",
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
  "slug": "le-mindegree-induce-of-support-subset--0c87fcf076c15024962709aa",
  "source": {
    "blob": "2fc73b928e67a1c16051854bdd32ed934f9eb989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 746,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant93be91cbef764b9bef6766b596ee7339ddf75e45ceba7b6ad0c10f5c3e034bf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c87fcf076c15024962709aa190e4b1da3617515adf074091f817f27d0c11b38",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant93be91cbef764b9bef6766b596ee7339ddf75e45ceba7b6ad0c10f5c3e034bf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b303c258-a6ec-bdd5-d7ec-704a1b488bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_minDegree_induce_of_support_subset (h : G.support ⊆ s) :
    G.minDegree ≤ (G.induce s).minDegree := by
  cases isEmpty_or_nonempty V
  · simp
  rcases s.eq_empty_or_nonempty with (rfl | hs)
  · simp [minDegree_eq_zero_iff_support_ne, Set.subset_empty_iff.mp h, Set.empty_ne_univ]
  have := hs.to_subtype
  refine le_minDegree_of_forall_le_degree _ _ fun v ↦ ?_
  grw [G.minDegree_le_degree v, degree_induce_of_neighborSet_subset]
  grw [neighborSet_subset_support, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant93be91cbef764b9bef6766b596ee7339ddf75e45ceba7b6ad0c10f5c3e034bf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant93be91cbef764b9bef6766b596ee7339ddf75e45ceba7b6ad0c10f5c3e034bf2.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc73b928e67a1c16051854bdd32ed934f9eb989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
