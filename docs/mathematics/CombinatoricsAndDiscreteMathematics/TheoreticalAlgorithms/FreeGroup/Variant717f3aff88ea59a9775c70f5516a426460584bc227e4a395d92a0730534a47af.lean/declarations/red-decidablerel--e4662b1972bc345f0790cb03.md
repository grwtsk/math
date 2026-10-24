# Red.decidableRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1eec8f3c3b87318eb840f0ed37d6bf2b941253026630d0b304176e95e0344f23",
  "kind": "instance",
  "lexical_name": "Red.decidableRel",
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
  "slug": "red-decidablerel--e4662b1972bc345f0790cb03",
  "source": {
    "blob": "a9de5450bdc3246e690578d0c0fab4ad0a22a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1383,
    "line": 1365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4662b1972bc345f0790cb03058f99829cdca92f0d3aa760b8c2884f07c6960c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1eec8f3c3b87318eb840f0ed37d6bf2b941253026630d0b304176e95e0344f23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1365–1383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Red.decidableRel : DecidableRel (@Red α)
  | [], [] => isTrue Red.refl
  | [], _hd2 :: _tl2 => isFalse fun H => List.noConfusion (Red.nil_iff.1 H)
  | (x, b) :: tl, [] =>
    match Red.decidableRel tl [(x, not b)] with
    | isTrue H => isTrue <| Red.trans (Red.cons_cons H) <| (@Red.Step.not _ [] [] _ _).to_red
    | isFalse H => isFalse fun H2 => H <| Red.cons_nil_iff_singleton.1 H2
  | (x1, b1) :: tl1, (x2, b2) :: tl2 =>
    if h : (x1, b1) = (x2, b2) then
      match Red.decidableRel tl1 tl2 with
      | isTrue H => isTrue <| h ▸ Red.cons_cons H
      | isFalse H => isFalse fun H2 => H $ (Red.cons_cons_iff _).1 $ h.symm ▸ H2
    else
      match Red.decidableRel tl1 ((x1, ! b1) :: (x2, b2) :: tl2) with
      | isTrue H => isTrue <| (Red.cons_cons H).tail Red.Step.cons_not
      | isFalse H => isFalse fun H2 => H <| Red.inv_of_red_of_ne h H2
#align free_group.red.decidable_rel FreeGroup.Red.decidableRel

/-- A list containing every word that `w₁` reduces to. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant717f3aff88ea59a9775c70f5516a426460584bc227e4a395d92a0730534a47af.lean#L1365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9de5450bdc3246e690578d0c0fab4ad0a22a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
