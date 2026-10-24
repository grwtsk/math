# _root_.WithBot.instWellFoundedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b08dd6c295c63e29279b6fbdb822c639d00ab906ed7aeb005ade9059b1bbfc40",
  "kind": "instance",
  "lexical_name": "_root_.WithBot.instWellFoundedGT",
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
  "slug": "root-withbot-instwellfoundedgt--762560657c9db73fdedc0776",
  "source": {
    "blob": "f12811930dbf75560614f98b150568a075054b9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant011f584fb1e986e7dcafd5e1c33c3f20d25a992fdff883cdb675fde8c0c90f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:762560657c9db73fdedc077694a0f447cb8a61b481db8c22ab6ea1e0b0ba62d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant011f584fb1e986e7dcafd5e1c33c3f20d25a992fdff883cdb675fde8c0c90f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b08dd6c295c63e29279b6fbdb822c639d00ab906ed7aeb005ade9059b1bbfc40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.WithBot.instWellFoundedGT [LT α] [WellFoundedGT α] : WellFoundedGT (WithBot α) where
  wf :=
  have acc_some (a : α) : Acc ((· > ·) : WithBot α → WithBot α → Prop) a :=
    (wellFounded_gt.1 a).rec fun _ _ ih =>
      .intro _ fun
        | (b : α), hlt => ih _ (coe_lt_coe.1 hlt)
  .intro fun
    | (a : α) => acc_some a
    | ⊥ => .intro _ fun | (b : α), _ => acc_some b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant011f584fb1e986e7dcafd5e1c33c3f20d25a992fdff883cdb675fde8c0c90f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant011f584fb1e986e7dcafd5e1c33c3f20d25a992fdff883cdb675fde8c0c90f62.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f12811930dbf75560614f98b150568a075054b9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
