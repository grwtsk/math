# condKernelUnitReal.instIsCondKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c0fb36cb90709d27b75d860d74268add310582858fec0c5e09e5c7af2e359a5",
  "kind": "instance",
  "lexical_name": "condKernelUnitReal.instIsCondKernel",
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
  "slug": "condkernelunitreal-instiscondkernel--6e1c32ff5cb50f95e5d232ee",
  "source": {
    "blob": "b52361ba85600d66244b4c96c55f6dd9ae3c9955",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 162,
    "path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e1c32ff5cb50f95e5d232eeeceb007b29834b2a56bd56e8e4698c30a11dcfcd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c0fb36cb90709d27b75d860d74268add310582858fec0c5e09e5c7af2e359a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance condKernelUnitReal.instIsCondKernel (κ : Kernel Unit (α × ℝ)) [IsFiniteKernel κ] :
    κ.IsCondKernel κ.condKernelUnitReal where
  disintegrate := by
    rw [condKernelUnitReal]
    exact compProd_toKernel (isCondKernelCDF_condCDF (κ ()))

end Real

section BorelSnd

/-! ### Disintegration of kernels on standard Borel spaces

Since every standard Borel space embeds measurably into `ℝ`, we can generalize a disintegration
property on `ℝ` to all these spaces. -/

open scoped Classical in
/-- Auxiliary definition for `ProbabilityTheory.Kernel.condKernel`.
A Borel space `Ω` embeds measurably into `ℝ` (with embedding `e`), hence we can get a `Kernel α Ω`
from a `Kernel α ℝ` by taking the comap by `e`.
Here we take the comap of a modification of `η : Kernel α ℝ`, useful when `η a` is a probability
measure with all its mass on `range e` almost everywhere with respect to some measure and we want to
ensure that the comap is a Markov kernel.
We thus take the comap by `e` of a kernel defined piecewise: `η` when
`η a (range (embeddingReal Ω))ᶜ = 0`, and an arbitrary deterministic kernel otherwise. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52361ba85600d66244b4c96c55f6dd9ae3c9955` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
