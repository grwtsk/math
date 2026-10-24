# overPretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71f3b5e6b91ec873f881ce4b67cb8cb566ad3112f88caeb85ad86f10a920e7cf",
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
  "slug": "overpretopology--0aca3113be344220448d636d",
  "source": {
    "blob": "71d02013f5603aea09344ac6fdd5ea1cccaf77f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 77,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0aca3113be344220448d636d6f9ae4278ac71a60771847aa537856dc95487ed8",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71f3b5e6b91ec873f881ce4b67cb8cb566ad3112f88caeb85ad86f10a920e7cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–95.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant2ce23c76bc30644caa5a025670d52bee2151783686a27b76ae533d3f9cc74c30.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d02013f5603aea09344ac6fdd5ea1cccaf77f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
