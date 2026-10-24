# moser_edge_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a0080ceaa5d38b125c12baa25000afe585095c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserSource.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cd879dd-0205-210e-487c-61a15158591b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "b8a0080ceaa5d38b125c12baa25000afe585095c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1561772e-3816-25e3-a694-86fa69e60eaa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b09dc23e-c6cc-7e04-3dc4-d61dd60f448f",
  "kind": "lemma",
  "lexical_name": "moser_edge_unit",
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
  "slug": "moser-edge-unit--318889ba87cbde312d7aace6",
  "source": {
    "blob": "b8a0080ceaa5d38b125c12baa25000afe585095c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:318889ba87cbde312d7aace63679941241f59371b3b5cc1bfc149b649aacc0e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence07210c6967e07b4261e32397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b09dc23e-c6cc-7e04-3dc4-d61dd60f448f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma moser_edge_unit {i j : Fin 7} (h : (i, j) ∈ moserEdges) : ‖moserPoint i-moserPoint j‖=1 := by
  have h3 := Real.sq_sqrt (show (0:ℝ)≤3 by norm_num)
  have h11 := Real.sq_sqrt (show (0:ℝ)≤11 by norm_num)
  simp only [moserEdges,Finset.mem_insert,Finset.mem_singleton,Prod.mk.injEq] at h
  rcases h with h|h|h|h|h|h|h|h|h|h|h <;> rcases h with ⟨rfl,rfl⟩
  all_goals
    apply complex_norm_one_of_sq
    norm_num [moserA,moserB,moserT,moserU,Complex.mul_re,Complex.mul_im,
      Complex.div_ofReal_re,Complex.div_ofReal_im,Complex.sub_re,Complex.sub_im,
      Complex.add_re,Complex.add_im] <;>
      (ring_nf; norm_num [h3,h11])
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource__SourceOccurrence07210c6967e07b4261e32397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserSource.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a0080ceaa5d38b125c12baa25000afe585095c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
