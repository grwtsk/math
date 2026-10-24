# coverOfIsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7702b5cd37d886ad86522b0137516a09c6ca22f86f4a89a110592338a3b46713",
  "kind": "def",
  "lexical_name": "coverOfIsIso",
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
  "slug": "coverofisiso--a9655cd20d0e6c8d9e644af3",
  "source": {
    "blob": "714c36ff47e5a20cde528e3faa64725d413221d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9655cd20d0e6c8d9e644af3c45b6956d1d10a0edc4836f689a666e4cf7d7f39",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7702b5cd37d886ad86522b0137516a09c6ca22f86f4a89a110592338a3b46713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coverOfIsIso [P.ContainsIdentities] [P.RespectsIso] {X Y : Scheme.{u}} (f : X ⟶ Y)
    [IsIso f] : Cover.{v} P Y where
  J := PUnit.{v + 1}
  obj _ := X
  map _ := f
  f _ := PUnit.unit
  covers x := by
    rw [Set.range_eq_univ.mpr]
    all_goals try trivial
    rw [← TopCat.epi_iff_surjective]
    infer_instance
  map_prop _ := P.of_isIso _

/-- We construct a cover from another, by providing the needed fields and showing that the
provided fields are isomorphic with the original cover. -/
@[simps J obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714c36ff47e5a20cde528e3faa64725d413221d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
