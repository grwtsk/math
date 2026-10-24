# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afa4831ce6453a152ffde41e61a5d6abbbfd7de83c7a063299ab67ab5d9b7a83",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--28d6a2062c670f33eadae11f",
  "source": {
    "blob": "15b5289d204c14c22bccd67a5b3a396fc7501f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 536,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28d6a2062c670f33eadae11fb9290647cb416e30808da8407b26381173969825",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afa4831ce6453a152ffde41e61a5d6abbbfd7de83c7a063299ab67ab5d9b7a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [hκ : IsFiniteKernel κ] [IsFiniteKernel η] : IsFiniteKernel (singularPart κ η) := by
  refine ⟨hκ.bound, hκ.bound_lt_top, fun a ↦ ?_⟩
  have h : withDensity η (rnDeriv κ η) a univ + singularPart κ η a univ = κ a univ := by
    conv_rhs => rw [← rnDeriv_add_singularPart κ η]
    simp
  exact (self_le_add_left _ _).trans (h.le.trans (measure_le_bound _ _ _))

/-- For two kernels `κ, η`, the singular part of `κ a` with respect to `η a` is a measurable
function of `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b5289d204c14c22bccd67a5b3a396fc7501f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
