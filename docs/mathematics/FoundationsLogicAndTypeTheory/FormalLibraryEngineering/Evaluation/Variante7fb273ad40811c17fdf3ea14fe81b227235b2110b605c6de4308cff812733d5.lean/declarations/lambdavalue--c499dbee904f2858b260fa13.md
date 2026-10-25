# lambdaValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29be92af24b68eaff16fcf4cd1a9d411d4db09d4b7301f36426c82687cc776c5",
  "kind": "def",
  "lexical_name": "lambdaValue",
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
  "slug": "lambdavalue--c499dbee904f2858b260fa13",
  "source": {
    "blob": "4c3aae560bac23ea83d29c22a9e76f37d9dfd7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c499dbee904f2858b260fa138c4b4de34a62b8334567a1bda8a9d6f533bb73aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29be92af24b68eaff16fcf4cd1a9d411d4db09d4b7301f36426c82687cc776c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lambdaValue (T : ActiveType Ω C) (act : LambdaAction (hw := hw) Ω C hno T) :
    Value (hw := hw) Ω C hno T.type := by
  by_cases hp : PlainLayer P C (Ω.profile T.type)
  · exact plainLambda Ω C hno T hp act
  · by_cases hf : FreeLayer P C (Ω.profile T.type) false
    · exact ⟨.plus (plusLambda Ω C hno T hf act),hf⟩
    · have hm : FreeLayer P C (Ω.profile T.type) true := by
        rcases T.active.classify with h | h | h
        · exact False.elim (hp h)
        · exact False.elim (hf h)
        · exact h
      exact ⟨.minus (packMinus Ω C hno (minusLambdaBehavior Ω C hno T hm act)),hm⟩

namespace FrameKey
variable {Ω C hno} {T : ActiveType Ω C} (a : FrameKey Ω C T)

open Classical in
/-- Encode a fitting domain parameter as an absent, plain, or negative payload for a positive
frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3aae560bac23ea83d29c22a9e76f37d9dfd7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
