# RelEmbedding.collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5861a5a3516f17c12f7ab43ea88c16ce25b57e01af32095f59da35c36ddcac0",
  "kind": "def",
  "lexical_name": "RelEmbedding.collapse",
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
  "slug": "relembedding-collapse--6e6a68bdc8ac00ec32784ff9",
  "source": {
    "blob": "eab74e0ea80cb08347158d5250ef3b8d759a0e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 530,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e6a68bdc8ac00ec32784ff9f468318f7961855bbb4a918ae034751e3d2d9faa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5861a5a3516f17c12f7ab43ea88c16ce25b57e01af32095f59da35c36ddcac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def RelEmbedding.collapse [IsWellOrder β s] (f : r ↪r s) : r ≼i s :=
  have H := RelEmbedding.isWellOrder f
  ⟨RelEmbedding.ofMonotone _ fun a b => collapseF_lt f, fun a b h ↦ by
    obtain ⟨m, hm, hm'⟩ := H.wf.has_min { a | ¬s _ b } ⟨_, asymm h⟩
    use m
    obtain lt | rfl | gt := trichotomous_of s b (collapseF f m)
    · refine (collapseF_not_lt f m (fun c h ↦ ?_) lt).elim
      by_contra hn
      exact hm' _ hn h
    · rfl
    · exact (hm gt).elim⟩

/-- For any two well orders, one is an initial segment of the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eab74e0ea80cb08347158d5250ef3b8d759a0e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
