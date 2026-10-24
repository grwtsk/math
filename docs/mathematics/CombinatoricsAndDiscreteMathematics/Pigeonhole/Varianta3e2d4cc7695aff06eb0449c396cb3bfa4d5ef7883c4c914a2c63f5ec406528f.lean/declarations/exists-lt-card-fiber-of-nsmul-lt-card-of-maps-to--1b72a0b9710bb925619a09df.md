# exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d618d6f4-823a-0a14-01ac-6470130b1412",
  "kind": "theorem",
  "lexical_name": "exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to",
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
  "slug": "exists-lt-card-fiber-of-nsmul-lt-card-of-maps-to--1b72a0b9710bb925619a09df",
  "source": {
    "blob": "8fddd854932060d9a63a0e60b64ab790252695fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b72a0b9710bb925619a09df82fb2e3871109f7b8bb8481708955adf3de198bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d618d6f4-823a-0a14-01ac-6470130b1412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to (hf : ∀ a ∈ s, f a ∈ t)
    (ht : #t • b < #s) : ∃ y ∈ t, b < #{x ∈ s | f x = y} := by
  simp_rw [cast_card] at ht ⊢
  exact exists_lt_sum_fiber_of_maps_to_of_nsmul_lt_sum hf ht

/-- The pigeonhole principle for finitely many pigeons counted by heads: there is a pigeonhole with
at least as many pigeons as the ceiling of the average number of pigeons across all pigeonholes.
("The maximum is at least the mean" specialized to integers.)

More formally, given a function between finite sets `s` and `t` and a natural number `n` such that
`#t * n < #s`, there exists `y ∈ t` such that its preimage in `s` has more than `n`
elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fddd854932060d9a63a0e60b64ab790252695fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
