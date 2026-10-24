# overPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:767b8d4c831239d0603e95adb41086c043f75fc70f45a1c211d23a24c1a6ffe6",
  "kind": "def",
  "lexical_name": "overPretopology",
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
  "slug": "overpretopology--8276040f050526348cd5d1fc",
  "source": {
    "blob": "e399368a2fab93fb2df9b4edff2583ab76dcbd06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8276040f050526348cd5d1fc23f6247ac433ae857ef687ac5980ea74f4867001",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:767b8d4c831239d0603e95adb41086c043f75fc70f45a1c211d23a24c1a6ffe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overPretopology : Pretopology (Over S) where
  coverings Y R := ∃ (𝒰 : Cover.{u} P Y.left) (_ : 𝒰.Over S), R = 𝒰.toPresieveOver
  has_isos {X Y} f _ := ⟨coverOfIsIso f.left, inferInstance, (Presieve.ofArrows_pUnit _).symm⟩
  pullbacks := by
    rintro Y X f _ ⟨𝒰, h, rfl⟩
    refine ⟨𝒰.pullbackCoverOver' S f.left, inferInstance, ?_⟩
    simpa [Cover.toPresieveOver] using
      (Presieve.ofArrows_pullback f (fun i ↦ (𝒰.obj i).asOver S) (fun i ↦ (𝒰.map i).asOver S)).symm
  transitive := by
    rintro X _ T ⟨𝒰, h, rfl⟩ H
    choose V h hV using H
    refine ⟨𝒰.bind (fun j => V ((𝒰.map j).asOver S) ⟨j⟩), inferInstance, ?_⟩
    convert Presieve.ofArrows_bind _ (fun j ↦ (𝒰.map j).asOver S) _
      (fun Y f H j ↦ ((V f H).obj j).asOver S) (fun Y f H j ↦ ((V f H).map j).asOver S)
    apply hV

/-- The topology on `Over S` induced from the topology on `Scheme` defined by `P`.
This agrees with the topology induced by `S.overPretopology P`, see
`AlgebraicGeometry.Scheme.overGrothendieckTopology_eq_toGrothendieck_overPretopology`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e399368a2fab93fb2df9b4edff2583ab76dcbd06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
