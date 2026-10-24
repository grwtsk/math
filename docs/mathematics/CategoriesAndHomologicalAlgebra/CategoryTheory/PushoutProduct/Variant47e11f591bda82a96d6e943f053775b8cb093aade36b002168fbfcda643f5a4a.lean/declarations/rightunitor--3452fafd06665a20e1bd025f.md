# rightUnitor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbf85aaea8dd78a90199dff535c959485ccb821e492f926c204d3fe24165468b",
  "kind": "def",
  "lexical_name": "rightUnitor",
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
  "slug": "rightunitor--3452fafd06665a20e1bd025f",
  "source": {
    "blob": "66a830f2f657733fec9270011f9cc890823e1a05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3452fafd06665a20e1bd025fb396ccfc5154c71d3de59d3f41ebc7de823af740",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbf85aaea8dd78a90199dff535c959485ccb821e492f926c204d3fe24165468b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightUnitor (X : Arrow C) :
    (X □ initial.to (𝟙_ C)) ≅ X := by
  refine Arrow.isoMk ?_ (ρ_ X.right) ?_
  · refine Iso.mk ?_ ((ρ_ X.left).inv ≫ pushout.inr _ _) ?_ ?_
    · refine pushout.desc ?_ (ρ_ X.left).hom ?_
      · exact (initialIsInitial.ofIso (zeroMul initialIsInitial).symm).to _
      · apply (initialIsInitial.ofIso (zeroMul initialIsInitial).symm).hom_ext
    · refine pushout.hom_ext ?_ (by simp)
      apply (initialIsInitial.ofIso (zeroMul initialIsInitial).symm).hom_ext
    · simp
  · refine pushout.hom_ext ?_ (by simp)
    apply (initialIsInitial.ofIso (zeroMul initialIsInitial).symm).hom_ext

/-- If `C` is a braided CCC with pushouts and an initial object, then `(⊥_ C ⟶ 𝟙_ C) □ X ≅ X`. -/
@[simp]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PushoutProduct/Variant47e11f591bda82a96d6e943f053775b8cb093aade36b002168fbfcda643f5a4a.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66a830f2f657733fec9270011f9cc890823e1a05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
