# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97ad008b9616de9132381b57c3b38195d1cf3fa6042b5fe389fbb0da1e4bd995",
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
  "slug": "instance--f1368c04ce8156daeb728d7e",
  "source": {
    "blob": "d3ee8af7ecdfff60343bf9bf8db637ba96629ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1368c04ce8156daeb728d7e45941d967efaeda97088c249364d2970cf8a2dbb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97ad008b9616de9132381b57c3b38195d1cf3fa6042b5fe389fbb0da1e4bd995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFiniteKernel κ] [IsFiniteKernel η] : IsFiniteKernel (κ ∥ₖ η) := by
  refine ⟨⟨IsFiniteKernel.bound κ * IsFiniteKernel.bound η,
    ENNReal.mul_lt_top (IsFiniteKernel.bound_lt_top κ) (IsFiniteKernel.bound_lt_top η),
    fun a ↦ ?_⟩⟩
  calc (κ ∥ₖ η) a Set.univ
  _ = κ a.1 Set.univ * η a.2 Set.univ := parallelComp_apply_univ
  _ ≤ IsFiniteKernel.bound κ * IsFiniteKernel.bound η := by
    gcongr
    · exact measure_le_bound κ a.1 Set.univ
    · exact measure_le_bound η a.2 Set.univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ParallelComp/Variant2700a3056031b8ead1e524ec9e4b3fb238fc8998780a62ccaca71a0c7dba66d1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ee8af7ecdfff60343bf9bf8db637ba96629ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
