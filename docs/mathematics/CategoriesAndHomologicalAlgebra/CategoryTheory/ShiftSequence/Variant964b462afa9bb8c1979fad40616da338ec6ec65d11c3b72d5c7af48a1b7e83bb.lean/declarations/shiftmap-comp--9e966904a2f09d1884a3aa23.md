# shiftMap_comp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e5ddcfc-a409-6adf-4684-f0517a65ce9f",
  "kind": "lemma",
  "lexical_name": "shiftMap_comp'",
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
  "slug": "shiftmap-comp--9e966904a2f09d1884a3aa23",
  "source": {
    "blob": "0ca61a7308491af9d5c3a412fcb56296005c070f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e966904a2f09d1884a3aa23839a64889b07a4fb48ab28238f53fe3692f749d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e5ddcfc-a409-6adf-4684-f0517a65ce9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftMap_comp' {X Y Z : C} {n : M} (f : X ⟶ Y) (g : Y ⟶ Z⟦n⟧) (a a' : M) (ha' : n + a = a') :
    F.shiftMap (f ≫ g) a a' ha' = (F.shift a).map f ≫ F.shiftMap g a a' ha' := by
  simp [shiftMap]

/--
When `f : X ⟶ Y⟦m⟧`, `m + n = mn`, `n + a = a'` and `ha'' : m + a' = a''`, this lemma
relates the two morphisms `F.shiftMap f a' a'' ha''` and `(F.shift a).map (f⟦n⟧')`. Indeed,
via canonical isomorphisms, they both identity to morphisms
`(F.shift a').obj X ⟶ (F.shift a'').obj Y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca61a7308491af9d5c3a412fcb56296005c070f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
