# pushStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4168cea46cc9ebdd6f05f32715b3c7999830111dfe66b095cbe3798ba9565dc",
  "kind": "def",
  "lexical_name": "pushStep",
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
  "slug": "pushstep--8236dd751e72a0cabeb83ebd",
  "source": {
    "blob": "734a5a1ab956d0a0a9362e968e54dc8231910429",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8236dd751e72a0cabeb83ebd22e77bcfccbb8312139b8c9a0e242f1887e21c7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4168cea46cc9ebdd6f05f32715b3c7999830111dfe66b095cbe3798ba9565dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushStep (head : Head) (cfg : Config) : Simp.Simproc := fun e => do
  let e_whnf ← whnf e
  let some e_head := Head.ofExpr? e_whnf | return Simp.Step.continue
  unless e_head == head do
    return Simp.Step.continue
  let thms := pushExt.getState (← getEnv)
  if let some r ← Simp.rewrite? e thms {} "push" false then
    -- We return `.visit r` instead of `.continue r`, because in the case of a triple negation,
    -- after rewriting `¬ ¬ ¬ p` into `¬ p`, we may want to rewrite `¬ p` again.
    return Simp.Step.visit r
  if let some e := e_whnf.not? then
    pushNegBuiltin cfg e
  else
    return Simp.Step.continue

/-- Common entry point to the implementation of `push`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Push/Varianta0cd34f313ca746cc04a59a9c3cd13ac40b4728048af4d8e8a42386b7f66c1f5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `734a5a1ab956d0a0a9362e968e54dc8231910429` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
