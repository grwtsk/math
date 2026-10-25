# lambdaExit_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5752ea2-a99a-4942-f78d-e7667f6a7791",
  "kind": "theorem",
  "lexical_name": "lambdaExit_level",
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
  "slug": "lambdaexit-level--faf43d03b03ecb8c14e84e92",
  "source": {
    "blob": "5bfe6cad9a8c758eabcd970b3091ffea72fa6e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf43d03b03ecb8c14e84e92d3c730e37abbb02d8e167d88cdc801ce70c91ade",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5752ea2-a99a-4942-f78d-e7667f6a7791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lambdaExit_level {X : Type u}
    (decode : FreeObservations.Payload (PlainValue (hw := hw) Ω C hno) X →
      Option (RawValue (hw := hw) Ω C hno))
    {T : ActiveType Ω C} {k l : Nat} {act act' : LambdaAction (hw := hw) Ω C hno T}
    (hr : ActionRelated Ω C hno T k l act act')
    {a a' : FreeObservations.Frame (Expr S) (PlainValue (hw := hw) Ω C hno) X}
    (hq : a.1 = a'.1) (hb : Parameter.Bounded Ω C hno k (decode a.2))
    (hb' : Parameter.Bounded Ω C hno k (decode a'.2))
    (he : Parameter.LevelEq Ω C hno l (decode a.2) (decode a'.2)) :
    lambdaExit Ω C hno decode T act a = lambdaExit Ω C hno decode T act' a' := by
  have hg : Gate Ω C hno T a.1 (decode a.2) true ↔ Gate Ω C hno T a'.1 (decode a'.2) true := by
    rw [hq]
    exact Gate.level_iff he
  unfold lambdaExit
  by_cases h : Gate Ω C hno T a.1 (decode a.2) true
  · have h' := hg.mp h
    rw [dif_pos h,dif_pos h']
    have hh := hr.gates hq h h' hb hb' he
    rw [← tagPlain_spec Ω C hno (h.frame.target hw) h.plain (act _ _ _),
      ← tagPlain_spec Ω C hno (h'.frame.target hw) h'.plain (act' _ _ _)] at hh
    exact congrArg some hh
  · rw [dif_neg h,dif_neg (mt hg.mpr h)]

open Classical in
/-- Uniform body estimates prove the *exact* minus lambda table is in the
colimit, so no fallback in `packMinus` is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfe6cad9a8c758eabcd970b3091ffea72fa6e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
