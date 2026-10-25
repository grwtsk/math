# minusLambda_representable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aba22833-b17a-511b-9c96-fde0c2608bf8",
  "kind": "theorem",
  "lexical_name": "minusLambda_representable",
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
  "slug": "minuslambda-representable--8c03104108fbe728b539d999",
  "source": {
    "blob": "31955c5ed077b3032e8eb5fbd181123443acd23e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c03104108fbe728b539d999aa5734b7ef88f372170b8a89344aca0c1b5cab96",
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

Occurrence: `result:aba22833-b17a-511b-9c96-fde0c2608bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minusLambda_representable {T : ActiveType Ω C}
    (hT : FreeLayer P C (Ω.profile T.type) true) {k l : Nat} (hl : 1 ≤ l)
    {act : LambdaAction (hw := hw) Ω C hno T} (hb : ActionBound Ω C hno T k l act)
    (hr : ActionRelated Ω C hno T k l act act) :
    ∃ x, FreeObservations.InStage (l + 1) x ∧
      FreeObservations.behavior _ _ _ _ x = minusLambdaBehavior Ω C hno T hT act := by
  apply FreeObservations.lambdaTable_representable (topBase Ω) none l
  · intro a
    exact (minusContinue_bounded Ω C hno hT hl hb a).mono (Nat.le_succ l)
  · intro a a' ha
    exact minusContinue_level Ω C hno hT hr ha
  · intro a a' ha
    have hh := minusFrame_restrict Ω C hno ha
    exact lambdaExit_level Ω C hno (minusPayload Ω C hno) hr hh.1
      (minusPayload_bounded Ω C hno k a) (minusPayload_bounded Ω C hno k a') hh.2

namespace Value
variable {Ω C hno}
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31955c5ed077b3032e8eb5fbd181123443acd23e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
