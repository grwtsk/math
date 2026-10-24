# weakKernelIsWeakKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4022992d80963a2d5756f62388124c13f64b36abaf19ff5e9d2f1b9864c9c814",
  "kind": "def",
  "lexical_name": "weakKernelIsWeakKernel",
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
  "slug": "weakkernelisweakkernel--5d3980b728b11a4baf58f1b5",
  "source": {
    "blob": "18a5b9be7da0e43f4535dbfe2c2d584185895b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d3980b728b11a4baf58f1b5411d96d5934e54f0ac9e0907037e32e2c0a8c93a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4022992d80963a2d5756f62388124c13f64b36abaf19ff5e9d2f1b9864c9c814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weakKernelIsWeakKernel :
    IsWeakLimit (Fork.ofι (weakKernel.ι f) ((weakKernel.condition f).trans comp_zero.symm)) :=
  IsWeakLimit.ofIsoWeakLimit (weakLimit.isWeakLimit _) (Fork.ext (Iso.refl _) (by simp))

/-- Given any morphism `k : W ⟶ X` satisfying `k ≫ f = 0`, `k` factors through
`weakKernel.ι f` via `weakKernel.lift : W ⟶ weakKernel f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakKernels/Variant827d9ccaa878dc02dc89caf58a3b98e2080b35d4947af6f4873eaf4fbbcd5678.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a5b9be7da0e43f4535dbfe2c2d584185895b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
