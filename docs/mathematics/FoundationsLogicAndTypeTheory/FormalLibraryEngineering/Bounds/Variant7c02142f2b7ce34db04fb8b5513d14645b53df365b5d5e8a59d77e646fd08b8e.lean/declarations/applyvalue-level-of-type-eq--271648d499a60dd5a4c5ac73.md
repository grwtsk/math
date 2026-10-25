# applyValue_level_of_type_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3e8e98-81a7-aaa9-a860-0fe6003b9105",
  "kind": "theorem",
  "lexical_name": "applyValue_level_of_type_eq",
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
  "slug": "applyvalue-level-of-type-eq--271648d499a60dd5a4c5ac73",
  "source": {
    "blob": "31955c5ed077b3032e8eb5fbd181123443acd23e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 624,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271648d499a60dd5a4c5ac733fdb1c6d378952ebade045be9c8840e02a5236fe",
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

Occurrence: `result:5a3e8e98-81a7-aaa9-a860-0fe6003b9105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyValue_level_of_type_eq {T U : ActiveType Ω C} (hTU : T.type = U.type)
    {k j r : Nat} (v : Value (hw := hw) Ω C hno T.type) (v' : Value (hw := hw) Ω C hno U.type)
    (hv : RawValue.Bounded Ω C hno j v.val)
    (hvv : RawValue.LevelEq Ω C hno (max k r) v.val v'.val)
    (a : FrameKey Ω C T) (a' : FrameKey Ω C U) (hq : a.argument = a'.argument)
    (p p' : Option (RawValue (hw := hw) Ω C hno))
    (hp : PayloadFits Ω C hno a.domain p) (hp' : PayloadFits Ω C hno a'.domain p')
    (hb : Parameter.Bounded Ω C hno r p) (hpp : Parameter.LevelEq Ω C hno j p p') :
    RawValue.LevelEq Ω C hno k (applyValue Ω C hno T v a p hp).val
      (applyValue Ω C hno U v' a' p' hp').val := by
  have hu := ActiveType.ext hTU
  subst U
  have ha := FrameKey.ext hq
  subst a'
  exact applyValue_level Ω C hno v v' hv hvv a p p' hp hp' hb hpp

namespace PreResult
variable {Ω C hno} {Γ : List (Expr S)} {M T : Expr S}
variable {e f : Environment (hw := hw) Ω C hno Γ}

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant7c02142f2b7ce34db04fb8b5513d14645b53df365b5d5e8a59d77e646fd08b8e.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31955c5ed077b3032e8eb5fbd181123443acd23e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
