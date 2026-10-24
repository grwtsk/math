# h1_isAddTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54e1e852-8095-be2a-e6c8-5880f4e54539",
  "kind": "theorem",
  "lexical_name": "h1_isAddTorsionFree",
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
  "slug": "h1-isaddtorsionfree--994d9fe83306bbb9f1bf99a0",
  "source": {
    "blob": "fb855d2c9a209188978f2477260da99b022423bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:994d9fe83306bbb9f1bf99a0eabaa2c9404151a9ad15e635406103c846368f9f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e1e852-8095-be2a-e6c8-5880f4e54539`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem h1_isAddTorsionFree : IsAddTorsionFree H1 := by
  letI : Module.Free ℤ H1 := h1_free
  exact IsAddTorsionFree.of_isTorsionFree ℤ H1

end

end Surface.CA03.BoundaryPresentation

#print axioms Surface.CA03.BoundaryPresentation.boundary2_class_eq_zero
#print axioms Surface.CA03.BoundaryPresentation.outerClass_eq_innerClass
#print axioms Surface.CA03.BoundaryPresentation.relations_eq_total_ker
#print axioms Surface.CA03.BoundaryPresentation.H1EquivInt
#print axioms Surface.CA03.BoundaryPresentation.h1_free
#print axioms Surface.CA03.BoundaryPresentation.h1_isAddTorsionFree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BoundaryPresentation/Variant6be44e8636949eaaa71314262da08b697a8f10445a4097da16f41bdefb1107e9.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb855d2c9a209188978f2477260da99b022423bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
