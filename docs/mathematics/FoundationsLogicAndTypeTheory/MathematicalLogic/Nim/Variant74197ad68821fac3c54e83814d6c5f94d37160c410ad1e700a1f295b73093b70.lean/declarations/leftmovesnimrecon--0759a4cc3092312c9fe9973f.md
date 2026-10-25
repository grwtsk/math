# leftMovesNimRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec4bb299361776a51c5ce865a37a92c9da7998b671a89bba631b2b4a02f929f8",
  "kind": "def",
  "lexical_name": "leftMovesNimRecOn",
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
  "slug": "leftmovesnimrecon--0759a4cc3092312c9fe9973f",
  "source": {
    "blob": "fecfccd08b5eab438892c1c87bcb9740fbdc0d58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0759a4cc3092312c9fe9973ff01d47a65553651ef07c710e378dd1456262b00b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec4bb299361776a51c5ce865a37a92c9da7998b671a89bba631b2b4a02f929f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftMovesNimRecOn {o : Ordinal} {P : (nim o).LeftMoves → Sort*} (i : (nim o).LeftMoves)
    (H : ∀ a (H : a < o), P <| toLeftMovesNim ⟨a, H⟩) : P i := by
  rw [← toLeftMovesNim.apply_symm_apply i]; apply H
#align pgame.left_moves_nim_rec_on SetTheory.PGame.leftMovesNimRecOn

/-- A recursion principle for right moves of a nim game. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fecfccd08b5eab438892c1c87bcb9740fbdc0d58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
