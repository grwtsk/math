# eq_finset_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c594239-79fc-b0cb-fc18-f438bba6e53a",
  "kind": "lemma",
  "lexical_name": "eq_finset_univ",
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
  "slug": "eq-finset-univ--ed5c68fc0c9f6490967eb01f",
  "source": {
    "blob": "a270a253f9da3102453fda2f640151d7b3424afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed5c68fc0c9f6490967eb01f81a05b8b40d4277f275136d1b88413c9b93b7c38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c594239-79fc-b0cb-fc18-f438bba6e53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_finset_univ [Fintype G] [DecidableEq G]
    {x y : G} (hx : x ≠ 1) (hy : y ≠ 1) (hxy : x ≠ y) : {x * y, x, y, (1 : G)} = Finset.univ := by
  apply Finset.eq_univ_of_card
  rw [card_four']
  repeat rw [card_insert_of_notMem]
  on_goal 4 => simpa using mul_notMem_of_exponent_two (by simp) hx hy hxy
  all_goals simp_all

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KleinFour/Variant948dcd2c48f343823eb468edf7728c951d09a933a3bdb53e0d85b7ed6955d184.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a270a253f9da3102453fda2f640151d7b3424afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
