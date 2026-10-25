# plainLambda_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70890988-0e57-1eb3-e5bd-229df51a0d27",
  "kind": "theorem",
  "lexical_name": "plainLambda_level",
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
  "slug": "plainlambda-level--beb8f0ef7400b26ab3ff7b23",
  "source": {
    "blob": "31955c5ed077b3032e8eb5fbd181123443acd23e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:beb8f0ef7400b26ab3ff7b23ea1c23925ef093a28c841b5100087a6eee4414ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70890988-0e57-1eb3-e5bd-229df51a0d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainLambda_level {T : ActiveType Ω C} (hT : PlainLayer P C (Ω.profile T.type))
    {k l : Nat} {act act' : LambdaAction (hw := hw) Ω C hno T}
    (hr : ActionRelated Ω C hno T k l act act') :
    RawValue.LevelEq Ω C hno k (plainLambda Ω C hno T hT act).val
      (plainLambda Ω C hno T hT act').val := by
  unfold plainLambda
  change Sigma.mk _ _ = Sigma.mk _ _
  congr 1
  apply congrArg (ActualPlain.prefixEquiv (hw := hw) hno (Base Ω) (T.plainNode hT)).symm
  apply Prod.ext
  · rfl
  funext a p
  apply Value.level_asPlain
  exact hr _ _ _ _ _ (ActualPlainKey.payload_bounded a p k)
    (ActualPlainKey.payload_bounded a p k) (Parameter.level_refl l _)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31955c5ed077b3032e8eb5fbd181123443acd23e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
