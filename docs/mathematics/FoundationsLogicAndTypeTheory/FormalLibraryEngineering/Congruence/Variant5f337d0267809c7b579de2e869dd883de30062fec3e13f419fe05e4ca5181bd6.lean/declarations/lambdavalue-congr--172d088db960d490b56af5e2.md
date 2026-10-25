# lambdaValue_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36af90af-5f2e-cf10-2a19-68ea93e36438",
  "kind": "theorem",
  "lexical_name": "lambdaValue_congr",
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
  "slug": "lambdavalue-congr--172d088db960d490b56af5e2",
  "source": {
    "blob": "c56f5dd9c2e998dad0ae22a59308e2d767cf8528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:172d088db960d490b56af5e220eb24c471aa986c57c80ef32c4794c6546effc3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36af90af-5f2e-cf10-2a19-68ea93e36438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lambdaValue_congr {T U : ActiveType Ω C} (hTU : T.type = U.type)
    (act : LambdaAction (hw := hw) Ω C hno T) (act' : LambdaAction (hw := hw) Ω C hno U)
    (hr : ∀ (a : FrameKey Ω C T) (a' : FrameKey Ω C U), a.argument = a'.argument →
      ∀ p hp hp', (act a p hp).val = (act' a' p hp').val) :
    (lambdaValue Ω C hno T act).val = (lambdaValue Ω C hno U act').val := by
  have hu := ActiveType.ext hTU
  subst U
  have he : act = act' := by
    funext a p hp
    exact Subtype.ext (hr a a rfl p hp hp)
  rw [he]

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56f5dd9c2e998dad0ae22a59308e2d767cf8528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
