# pairwiseDisjoint_prod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6491ca38-5da8-284d-5004-a18d75fc5d36",
  "kind": "theorem",
  "lexical_name": "pairwiseDisjoint_prod_left",
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
  "slug": "pairwisedisjoint-prod-left--5e0265b0d61206f4246785d7",
  "source": {
    "blob": "e7dc5d5c3e8f0432f3196a3ffa68ac42848b3e69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e0265b0d61206f4246785d7aa5b2fdea0f744a434d3e9a4ec819e0bc3a16e68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6491ca38-5da8-284d-5004-a18d75fc5d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwiseDisjoint_prod_left {s : Set ι} {t : Set ι'} {f : ι × ι' → α} :
    (s ×ˢ t : Set (ι × ι')).PairwiseDisjoint f ↔
      (s.PairwiseDisjoint fun i => ⨆ i' ∈ t, f (i, i')) ∧
        t.PairwiseDisjoint fun i' => ⨆ i ∈ s, f (i, i') := by
  refine
      ⟨fun h => ⟨fun i hi j hj hij => ?_, fun i hi j hj hij => ?_⟩, fun h => h.1.prod_left h.2⟩ <;>
    simp_rw [Function.onFun, iSup_disjoint_iff, disjoint_iSup_iff] <;>
    intro i' hi' j' hj'
  · exact h (mk_mem_prod hi hi') (mk_mem_prod hj hj') (ne_of_apply_ne Prod.fst hij)
  · exact h (mk_mem_prod hi' hi) (mk_mem_prod hj' hj) (ne_of_apply_ne Prod.snd hij)

end Frame

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant39bd70af35210bd21fba9081a691d4648783d18038c4c5a15c03da0c08b3cbb3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7dc5d5c3e8f0432f3196a3ffa68ac42848b3e69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
