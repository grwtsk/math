# PairwiseDisjoint.prod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:422577d3-a6ea-265f-3854-001420d3956e",
  "kind": "theorem",
  "lexical_name": "PairwiseDisjoint.prod_left",
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
  "slug": "pairwisedisjoint-prod-left--75bf51b4f897dd9cdaa1f070",
  "source": {
    "blob": "f7f115ddafdb7fb80ac066cd241189b5f9af9d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Varianta4cb81a47bb044bc6e940d8b1b9370f225564b6a54df1849915f3a3d46176b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75bf51b4f897dd9cdaa1f0706187ecb96da28f33dd9bc14292f47f5f46faf347",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Varianta4cb81a47bb044bc6e940d8b1b9370f225564b6a54df1849915f3a3d46176b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:422577d3-a6ea-265f-3854-001420d3956e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PairwiseDisjoint.prod_left {f : ι × ι' → α}
    (hs : s.PairwiseDisjoint fun i => ⨆ i' ∈ t, f (i, i'))
    (ht : t.PairwiseDisjoint fun i' => ⨆ i ∈ s, f (i, i')) :
    (s ×ˢ t : Set (ι × ι')).PairwiseDisjoint f := by
  rintro ⟨i, i'⟩ hi ⟨j, j'⟩ hj h
  rw [mem_prod] at hi hj
  obtain rfl | hij := eq_or_ne i j
  · refine (ht hi.2 hj.2 <| (Prod.mk_right_injective _).ne_iff.1 h).mono ?_ ?_
    · convert! le_iSup₂ (α := α) i hi.1; rfl
    · convert! le_iSup₂ (α := α) i hj.1; rfl
  · refine (hs hi.1 hj.1 hij).mono ?_ ?_
    · convert! le_iSup₂ (α := α) i' hi.2; rfl
    · convert! le_iSup₂ (α := α) j' hj.2; rfl

end CompleteLattice

section Frame

variable [Frame α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Varianta4cb81a47bb044bc6e940d8b1b9370f225564b6a54df1849915f3a3d46176b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Varianta4cb81a47bb044bc6e940d8b1b9370f225564b6a54df1849915f3a3d46176b12.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7f115ddafdb7fb80ac066cd241189b5f9af9d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
