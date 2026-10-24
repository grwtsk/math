# sup_mem_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfe58a79-e0f1-8f66-70a0-b50e96327d54",
  "kind": "theorem",
  "lexical_name": "sup_mem_of_nonempty",
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
  "slug": "sup-mem-of-nonempty--1a57c1bce164c0069dee86b1",
  "source": {
    "blob": "93f9958671bdcb2771f0f56ac65c41b709c44654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 504,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a57c1bce164c0069dee86b1030670239c33ddeca25aa5bead526d8490119977",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfe58a79-e0f1-8f66-70a0-b50e96327d54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_mem_of_nonempty (hs : s.Nonempty) : s.sup f ∈ f '' s := by
  classical
  induction s using Finset.induction with
  | empty => simp only [Finset.not_nonempty_empty] at hs
  | insert a s _ h =>
    rw [Finset.sup_insert (b := a) (s := s) (f := f)]
    cases s.eq_empty_or_nonempty with
    | inl hs => simp [hs]
    | inr hs =>
      simp only [Finset.coe_insert]
      rcases le_total (f a) (s.sup f) with (ha | ha)
      · rw [sup_eq_right.mpr ha]
        exact Set.image_mono (Set.subset_insert a s) (h hs)
      · rw [sup_eq_left.mpr ha]
        apply Set.mem_image_of_mem _ (Set.mem_insert a ↑s)

end OrderBot

end LinearOrder

section Sup'

variable [SemilatticeSup α]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant1f7a2dc2ef15fe45e2cc60459575da03cb6c516661d07747cf55a52e6cd49a1a.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f9958671bdcb2771f0f56ac65c41b709c44654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
