# pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a6f3dcfcd901582f39c28fe93668e76087f8682382e9394c8df2bb152701072",
  "kind": "def",
  "lexical_name": "pretopology",
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
  "slug": "pretopology--1f4e2f33595ff2efd198bf12",
  "source": {
    "blob": "84d50d0d2a13ded4369f6f03fdac5e3385a35b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f4e2f33595ff2efd198bf12e2a9cc96e0f64b09ea2c86e0ae1a7e6229045399",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a6f3dcfcd901582f39c28fe93668e76087f8682382e9394c8df2bb152701072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pretopology : Pretopology Scheme.{u} where
  coverings Y S := ∃ (U : Cover.{u} P Y), S = Presieve.ofArrows U.obj U.map
  has_isos _ _ f _ := ⟨coverOfIsIso f, (Presieve.ofArrows_pUnit _).symm⟩
  pullbacks := by
    rintro Y X f _ ⟨U, rfl⟩
    exact ⟨U.pullbackCover' f, (Presieve.ofArrows_pullback _ _ _).symm⟩
  transitive := by
    rintro X _ T ⟨U, rfl⟩ H
    choose V hV using H
    use U.bind (fun j => V (U.map j) ⟨j⟩)
    simpa only [Cover.bind, ← hV] using Presieve.ofArrows_bind U.obj U.map _
      (fun _ f H => (V f H).obj) (fun _ f H => (V f H).map)

/-- The Grothendieck topology on the category of schemes induced by the pretopology defined by
`P`-covers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant525b90f9d9387c3837b00820e2e00e8f5b59b4b67797f9cec07f5cde3680746c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d50d0d2a13ded4369f6f03fdac5e3385a35b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
