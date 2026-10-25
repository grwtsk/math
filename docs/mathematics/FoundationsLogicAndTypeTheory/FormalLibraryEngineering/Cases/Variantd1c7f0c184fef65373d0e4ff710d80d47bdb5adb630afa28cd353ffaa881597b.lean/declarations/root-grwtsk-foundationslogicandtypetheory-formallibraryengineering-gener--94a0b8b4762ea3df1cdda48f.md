# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeIndicesSubgoal.Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.Lean.MVarId.casesRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9851c8d7ab37aa5688b1c5c7d055271a0b47db6f632d6eed3076cf8f65f2498e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeIndicesSubgoal.Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.Lean.MVarId.casesRec",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-gener--94a0b8b4762ea3df1cdda48f",
  "source": {
    "blob": "8b2fcb51247d252574de91ea69a367a8b14f0ad1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94a0b8b4762ea3df1cdda48f39bd512afbc99ae8d576cd00a21fbc04f7ef00f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9851c8d7ab37aa5688b1c5c7d055271a0b47db6f632d6eed3076cf8f65f2498e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeIndicesSubgoal.Variantd9fb87a4567100d9828cefe632b0a594e9850d48412daed04a252ebb82443385.Lean.MVarId.casesRec (mvarId : MVarId) (p : LocalDecl → MetaM Bool) : MetaM (List MVarId) :=
  saturate mvarId fun mvarId =>
    mvarId.withContext do
      for localDecl in (← getLCtx) do
        if (← p localDecl) then
          let r? ← observing? do
            let r ← mvarId.cases localDecl.fvarId
            return r.toList.map (·.mvarId)
          if r?.isSome then
            return r?
      return none

/--
Applies `cases` (recursively) to any hypothesis of the form `h : p ∧ q`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variantd1c7f0c184fef65373d0e4ff710d80d47bdb5adb630afa28cd353ffaa881597b.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2fcb51247d252574de91ea69a367a8b14f0ad1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
