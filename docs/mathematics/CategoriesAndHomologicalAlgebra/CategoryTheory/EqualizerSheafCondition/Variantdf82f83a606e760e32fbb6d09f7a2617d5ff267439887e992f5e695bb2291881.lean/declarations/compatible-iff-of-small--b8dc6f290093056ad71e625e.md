# compatible_iff_of_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad328cf7-cd12-05e3-6a0a-bc0d9e895aa9",
  "kind": "lemma",
  "lexical_name": "compatible_iff_of_small",
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
  "slug": "compatible-iff-of-small--b8dc6f290093056ad71e625e",
  "source": {
    "blob": "cccf3d0d7a37313d83d52ab11c966bb623feeac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 354,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8dc6f290093056ad71e625e1d26aaba33f2e812a7624fa064d59af2b27ac617",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad328cf7-cd12-05e3-6a0a-bc0d9e895aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatible_iff_of_small (x : FirstObj P X) :
    (Arrows.Compatible P π ((equivShrink _).symm ((Types.Small.productIso _).hom x))) ↔
      firstMap P X π x = secondMap P X π x := by
  rw [Arrows.pullbackCompatible_iff]
  refine ⟨fun t ↦ ?_, fun t i j ↦ ?_⟩
  · ext ij
    simpa [firstMap, secondMap] using t ij.1 ij.2
  · apply_fun Pi.π (fun (ij : I × I) ↦ P.obj (op (pullback (π ij.1) (π ij.2)))) ⟨i, j⟩ at t
    simpa [firstMap, secondMap] using t

/-- `P` is a sheaf for `Presieve.ofArrows X π`, iff the fork given by `w` is an equalizer. -/
@[stacks 00VM]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerSheafCondition/Variantdf82f83a606e760e32fbb6d09f7a2617d5ff267439887e992f5e695bb2291881.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccf3d0d7a37313d83d52ab11c966bb623feeac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
