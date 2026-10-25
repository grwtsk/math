# abstractionAction_raw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa34a15-37cc-49c5-61e4-0a1d56cfc20c",
  "kind": "theorem",
  "lexical_name": "abstractionAction_raw",
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
  "slug": "abstractionaction-raw--56e40e2ba4ee7aa0e03c20e6",
  "source": {
    "blob": "3083cf86771e4628de8f5aac5999317f4f8d9520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 250,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e40e2ba4ee7aa0e03c20e688c93881b6b70ca720e41e681cf1981b8181ce30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa34a15-37cc-49c5-61e4-0a1d56cfc20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstractionAction_raw {D m E : Expr S} {s : S}
    (h : HasType P Γ (.lam D m) T) (hp : HasType P Γ (.pi D E) (.sort s))
    (hc : Converts T (.pi D E)) (b : TypingTree P (D :: Γ) m E)
    (hC : IsComponent (PrimaryEdge P) C)
    (e : Environment (hw := hw) Ω C hno Γ)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (k : FrameKey Ω C (e.activeType h ha))
    (p : Option (RawValue (hw := hw) Ω C hno)) (hpp : PayloadFits Ω C hno k.domain p)
    (n : Expr S) (hn : Ω.HasType n (D.subst e.images))
    (hp' : PayloadFits Ω C hno (D.subst e.images).normalForm p)
    (hkn : Converts k.argument n)
    (ha' : ActiveLayer P C (Ω.profile (E.subst (Expr.consSub n e.images)).normalForm)) :
    (abstractionAction h hp hc (preEvaluate Ω C hno b) e ha k p hpp).val =
      ((preEvaluate Ω C hno b (e.cons hn p hp')).val ha').val := by
  unfold abstractionAction
  apply val_congr
  apply (preEvaluate_compatible Ω C hno hC b _ _ ?_).1
  constructor
  · intro i hi
    cases i with
    | zero => exact hkn
    | succ i => exact .refl _
  · intro i hi
    cases i <;> rfl
end PreResult
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationReduction/Variant92b1466e7f4750484c00ac68c1cf7f6ab5247077fdb4ae5a463a1b2ef6a20143.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3083cf86771e4628de8f5aac5999317f4f8d9520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
