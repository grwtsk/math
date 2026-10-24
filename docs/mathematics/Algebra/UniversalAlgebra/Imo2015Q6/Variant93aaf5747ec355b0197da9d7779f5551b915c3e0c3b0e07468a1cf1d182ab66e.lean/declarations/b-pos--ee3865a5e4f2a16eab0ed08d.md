# b_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c07bae-eb9b-c1a8-e65a-b24a6700fd69",
  "kind": "lemma",
  "lexical_name": "b_pos",
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
  "slug": "b-pos--ee3865a5e4f2a16eab0ed08d",
  "source": {
    "blob": "f70b009084c5499dcb392fa79b548d405346d20b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3865a5e4f2a16eab0ed08d7e7c4ced27804adb15cee0f3a84f85e259cee3ab",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c07bae-eb9b-c1a8-e65a-b24a6700fd69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma b_pos : 0 < b := by
  by_contra! h; rw [nonpos_iff_eq_zero] at h; subst h
  replace hbN : ∀ t, #(pool a t) = 0 := fun t ↦ by
    obtain h | h := le_or_gt t N
    · have : #(pool a t) ≤ #(pool a N) := monotone_card_pool ha h
      rwa [hbN _ le_rfl, nonpos_iff_eq_zero] at this
    · exact hbN _ h.le
  have cp1 : #(pool a 1) = 1 := by
    simp_rw [card_pool_succ ha, pool, card_empty, notMem_empty, ite_false]
  apply absurd (hbN 1); lia

include ht in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variant93aaf5747ec355b0197da9d7779f5551b915c3e0c3b0e07468a1cf1d182ab66e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70b009084c5499dcb392fa79b548d405346d20b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
