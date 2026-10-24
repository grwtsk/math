# kernelVector_injective_of_posDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36e51179-0102-7921-53de-891d5b45547c",
  "kind": "theorem",
  "lexical_name": "kernelVector_injective_of_posDef",
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
  "slug": "kernelvector-injective-of-posdef--8fd9171d34464e05d02baa5b",
  "source": {
    "blob": "34ace6be399c262f410ef5a9fad225462f1bfbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 32,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ADd3e034197d0ff18/Variant2a96ba292f59e25d1183fa96177c5b754431b6b10f0e91abf24383576297a1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fd9171d34464e05d02baa5bffb311ff474d88e42654d2259b554507dbc34ce8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ADd3e034197d0ff18/Variant2a96ba292f59e25d1183fa96177c5b754431b6b10f0e91abf24383576297a1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36e51179-0102-7921-53de-891d5b45547c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernelVector_injective_of_posDef
    (kernel : Kernel.PositiveKernel Index)
    (positiveDefinite : kernel.matrix.PosDef) :
    Function.Injective (kernelVector kernel) := by
  intro left right vectorsEqual
  let difference : Raw kernel :=
    Raw.basisVector kernel left - Raw.basisVector kernel right
  have mappedDifferenceZero :
      rawToKernelSpace kernel difference = 0 := by
    dsimp only [difference]
    rw [map_sub, rawToKernelSpace_basisVector,
      rawToKernelSpace_basisVector, vectorsEqual, sub_self]
  have energyZero : Raw.inner kernel difference difference = 0 := by
    rw [← inner_rawToKernelSpace]
    simp [mappedDifferenceZero]
  have differenceZero :=
    raw_eq_zero_of_posDef kernel positiveDefinite energyZero
  have basisEqual :
      Raw.basisVector kernel left = Raw.basisVector kernel right :=
    sub_eq_zero.mp differenceZero
  exact Finsupp.single_left_injective (one_ne_zero : (1 : ℂ) ≠ 0)
    basisEqual

section Kronecker

variable [DecidableEq Index]

end Kronecker

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ADd3e034197d0ff18/Variant2a96ba292f59e25d1183fa96177c5b754431b6b10f0e91abf24383576297a1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ADd3e034197d0ff18/Variant2a96ba292f59e25d1183fa96177c5b754431b6b10f0e91abf24383576297a1ea.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ace6be399c262f410ef5a9fad225462f1bfbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
