# kernel_from_eq_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b8df5c7-fa6c-3e30-65b1-76bb8764a044",
  "kind": "theorem",
  "lexical_name": "kernel_from_eq_kernel",
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
  "slug": "kernel-from-eq-kernel--0142af78825d413d16e86d28",
  "source": {
    "blob": "4da896113a2d3aef8d60e0c23b8cece5aeb5c473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 497,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2994e273c0bf7b21fcea2ec2c98fd93ceb1b4b2ed1c341a4d31cfa278fe3b9f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0142af78825d413d16e86d280d82d68921e8c8e376d075bc294aa26e1cf0af5f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2994e273c0bf7b21fcea2ec2c98fd93ceb1b4b2ed1c341a4d31cfa278fe3b9f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8df5c7-fa6c-3e30-65b1-76bb8764a044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_from_eq_kernel [HasKernels V] {i j : ι} (r : c.Rel i j) :
    kernelSubobject (C.dFrom i) = kernelSubobject (C.d i j) := by
  rw [C.dFrom_eq r]
  apply kernelSubobject_comp_mono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2994e273c0bf7b21fcea2ec2c98fd93ceb1b4b2ed1c341a4d31cfa278fe3b9f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant2994e273c0bf7b21fcea2ec2c98fd93ceb1b4b2ed1c341a4d31cfa278fe3b9f5.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da896113a2d3aef8d60e0c23b8cece5aeb5c473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
