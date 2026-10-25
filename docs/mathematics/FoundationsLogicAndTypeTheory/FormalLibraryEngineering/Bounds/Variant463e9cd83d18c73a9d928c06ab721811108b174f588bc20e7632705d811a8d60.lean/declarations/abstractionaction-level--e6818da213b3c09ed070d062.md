# abstractionAction_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb01053c-eed3-7e14-88da-4a205b09d928",
  "kind": "theorem",
  "lexical_name": "abstractionAction_level",
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
  "slug": "abstractionaction-level--e6818da213b3c09ed070d062",
  "source": {
    "blob": "88d77715197fee4ac575797eb319b8d5488e6715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 933,
    "line": 907,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6818da213b3c09ed070d0622ff2aa3adab8b739bc595cbf5b31d468f50fadb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb01053c-eed3-7e14-88da-4a205b09d928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–933.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abstractionAction_level {D m E : Expr S} {s : S} (h : HasType P Γ (.lam D m) T)
    (hp : HasType P Γ (.pi D E) (.sort s)) (hc : Converts T (.pi D E))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) m E) {B : Nat → Nat}
    (hb : Uniform Ω C hno eb B) (k : Nat) (e f : Environment (hw := hw) Ω C hno Γ)
    (he : e.Bounded k) (hf : f.Bounded k) (hef : e.LevelEq (B k) f)
    (ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm))
    (ha' : ActiveLayer P C (Ω.profile (T.subst f.images).normalForm))
    (a : FrameKey Ω C (e.activeType h ha)) (a' : FrameKey Ω C (f.activeType h ha'))
    (hq : a.argument = a'.argument)
    (p p' : Option (RawValue (hw := hw) Ω C hno))
    (hp' : PayloadFits Ω C hno a.domain p) (hp'' : PayloadFits Ω C hno a'.domain p')
    (hbp : Parameter.Bounded Ω C hno k p) (hbp' : Parameter.Bounded Ω C hno k p')
    (hpp : Parameter.LevelEq Ω C hno (B k) p p') :
    RawValue.LevelEq Ω C hno k (abstractionAction h hp hc eb e ha a p hp').val
      (abstractionAction h hp hc eb f ha' a' p' hp'').val := by
  dsimp only [abstractionAction]
  apply hb.val_level
  · dsimp only [ProductInstance.frameEnvironment, ProductInstance.extend]
    exact Environment.bounded_cons _ _ _ _ he hbp
  · dsimp only [ProductInstance.frameEnvironment, ProductInstance.extend]
    exact Environment.bounded_cons _ _ _ _ hf hbp'
  · dsimp only [ProductInstance.frameEnvironment, ProductInstance.extend]
    apply Environment.level_cons hef
    · exact hq ▸ .refl _
    · exact hpp

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d77715197fee4ac575797eb319b8d5488e6715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
