# condKernelBorel.instIsCondKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0a7beb9310466b1245b89a0b3b302de3c11b27c0c35769e1a21456f174e541b",
  "kind": "instance",
  "lexical_name": "condKernelBorel.instIsCondKernel",
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
  "slug": "condkernelborel-instiscondkernel--dc1db3d34c57326a22335e3f",
  "source": {
    "blob": "156e851c5f54e19386ae6486675ed4aeb73f549f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 329,
    "path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc1db3d34c57326a22335e3f3d77d6a92d5427e2b6de65e41465fc907acaa22a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0a7beb9310466b1245b89a0b3b302de3c11b27c0c35769e1a21456f174e541b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance condKernelBorel.instIsCondKernel (κ : Kernel α (γ × Ω)) [IsFiniteKernel κ] :
    κ.IsCondKernel κ.condKernelBorel where
  disintegrate := by
    rw [condKernelBorel, compProd_fst_borelMarkovFromReal _ _ (compProd_fst_condKernelReal _)]

end CountablyGenerated

section Unit
variable (κ : Kernel Unit (α × Ω)) [IsFiniteKernel κ]

/-- Auxiliary definition for `MeasureTheory.Measure.condKernel` and
`ProbabilityTheory.Kernel.condKernel`.
A conditional kernel for `κ : Kernel Unit (α × Ω)` where `Ω` is standard Borel. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant5cee3660b543f06364edce879d08ba01129ee719160ee066a55bbb189f3ba1a9.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `156e851c5f54e19386ae6486675ed4aeb73f549f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
