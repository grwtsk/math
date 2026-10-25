# finiteIndex_range_powMonoidHom_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5970a431-18aa-0d7f-9afb-3106ec15aacf",
  "kind": "lemma",
  "lexical_name": "finiteIndex_range_powMonoidHom_of_fg",
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
  "slug": "finiteindex-range-powmonoidhom-of-fg--ffb39f4b9797954dec6b0a1a",
  "source": {
    "blob": "d29964f7e602d4f1c93ec34f711d18a9abd6a76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffb39f4b9797954dec6b0a1a98640c29b23f2fb48316491c9a8812f4b1e712a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5970a431-18aa-0d7f-9afb-3106ec15aacf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finiteIndex_range_powMonoidHom_of_fg (A : Type*) [CommGroup A] [Group.FG A] {n : ℕ}
    (hn : n ≠ 0) :
    (powMonoidHom (α := A) n).range.FiniteIndex :=
  finiteIndex_iff_finite_quotient.mpr <| CommGroup.finite_of_fg_isMulTorsion _ <|
    CommGroup.isMulTorsion_quotient_range_powMonoidHom A hn

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d29964f7e602d4f1c93ec34f711d18a9abd6a76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
