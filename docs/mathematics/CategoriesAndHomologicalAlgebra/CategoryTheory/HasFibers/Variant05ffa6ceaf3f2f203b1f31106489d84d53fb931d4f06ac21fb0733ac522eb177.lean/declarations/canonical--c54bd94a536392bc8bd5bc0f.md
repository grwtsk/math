# canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bea50bca150652f13174ee978bf7d26cc4670ebe60ac2f9a9789110e9bf99d97",
  "kind": "def",
  "lexical_name": "canonical",
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
  "slug": "canonical--c54bd94a536392bc8bd5bc0f",
  "source": {
    "blob": "b543d236dc1cd1c6143b619c8728a2f8d5c01a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c54bd94a536392bc8bd5bc0f1f8eef48ef1657e2f6e60775b7a8fea9f2cf7b9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bea50bca150652f13174ee978bf7d26cc4670ebe60ac2f9a9789110e9bf99d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonical (p : 𝒳 ⥤ 𝒮) : HasFibers p where
  Fib := Fiber p
  ι S := fiberInclusion
  comp_const S := fiberInclusion_comp_eq_const
  equiv S := by exact isEquivalence_of_iso (F := 𝟭 (Fiber p S)) (Iso.refl _)

section

variable (p : 𝒳 ⥤ 𝒮) [HasFibers p] (S : 𝒮)

attribute [instance_reducible, instance] category

/-- The induced functor from `Fib p S` to the standard fiber. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant05ffa6ceaf3f2f203b1f31106489d84d53fb931d4f06ac21fb0733ac522eb177.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b543d236dc1cd1c6143b619c8728a2f8d5c01a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
